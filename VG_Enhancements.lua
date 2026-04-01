--[[--------------------------------------------------
VG_Enhancements.lua
Description: Quality of life improvements for VanillaGuide Enhanced
------------------------------------------------------]]

VG_Enhance = {}
VG_Enhance.inCombat = false
VG_Enhance.compactMode = 1
VG_Enhance.initialized = false
VG_Enhance.logMax = 500

---------------------------------------------------------
-- DEBUG LOG
---------------------------------------------------------
function VG_Enhance:Log(category, message)
	if not VG_DebugLog then VG_DebugLog = {} end
	local timestamp = date("%H:%M:%S")
	local entry = timestamp .. " [" .. (category or "?") .. "] " .. (message or "")
	table.insert(VG_DebugLog, entry)
	local count = 0
	for _ in ipairs(VG_DebugLog) do count = count + 1 end
	while count > self.logMax do
		table.remove(VG_DebugLog, 1)
		count = count - 1
	end
end

---------------------------------------------------------
-- SAFE DB ACCESS
---------------------------------------------------------
local function DB()
	if not VG_EnhanceDB then
		VG_EnhanceDB = {
			combatTransparency = false,
			combatAlpha = 0.3,
			autoAcceptTurnIn = true,
			rightClickSkip = true,
			showStepCounter = true,
			showProgressBar = false,
			timeEstimate = true,
			stepTypeColors = true,
			completedStepGray = true,
			arrivalSound = true,
			shareStep = true,
			autoSkipCompleted = true,
		}
	end
	if not VG_EnhanceDB.completedSteps then
		VG_EnhanceDB.completedSteps = {}
	end
	return VG_EnhanceDB
end

---------------------------------------------------------
-- QUEST MEMORY
---------------------------------------------------------
function VG_Enhance:MarkStepDone(guideID, step)
	local db = DB()
	db.completedSteps[(guideID or 0) .. ":" .. (step or 0)] = true
end

function VG_Enhance:IsStepDone(guideID, step)
	local db = DB()
	return db.completedSteps[(guideID or 0) .. ":" .. (step or 0)] == true
end

function VG_Enhance:IsQuestInLog(questName)
	if not questName or strlen(questName) < 2 then return false, false end
	local numEntries = GetNumQuestLogEntries()
	for i = 1, numEntries do
		local title, _, _, isHeader, _, isComplete = GetQuestLogTitle(i)
		if not isHeader and title then
			if string.find(title, questName, 1, true) then
				return true, (isComplete == 1)
			end
		end
	end
	return false, false
end

function VG_Enhance:TryAutoSkip()
	if not DB().autoSkipCompleted then return end
	if not VGuide or not VGuide.Display or not VGuide.UI then return end

	local skipped = 0
	for i = 1, 10 do
		local guideID = VGuide.Display:GetCurrentGuideID()
		local step = VGuide.Display:GetCurrentStep()
		local total = VGuide.Display:GetCurrentStepCount()
		local stepText = VGuide.Display:GetStepLabel()
		if not step or not total or step >= total then break end

		local skip = false

		-- Check our memory
		if self:IsStepDone(guideID, step) then
			skip = true
		end

		-- Check quest log: only skip if step is PURELY about accepting quests
		-- (no turn-in #IN, no objectives #DO, no items #ITEM to collect)
		if not skip and stepText then
			local hasGet = string.find(stepText, "|c0000ffff", 1, true)
			local hasTurnIn = string.find(stepText, "|c0000ff00", 1, true)
			local hasObjective = string.find(stepText, "|c000079d2", 1, true)
			local hasItem = string.find(stepText, "|c00fca742", 1, true)

			-- Only skip if step has #GET quests and NO turn-ins/objectives/items
			if hasGet and not hasTurnIn and not hasObjective and not hasItem then
				local allInLog = true
				local foundAny = false
				for name in string.gfind(stepText, "|c0000ffff(.-)%|r") do
					if name and strlen(name) > 1 then
						foundAny = true
						if not self:IsQuestInLog(name) then
							allInLog = false
						end
					end
				end
				if foundAny and allInLog then
					skip = true
				end
			end
		end

		if skip then
			VGuide.Display:NextStep()
			skipped = skipped + 1
			self:Log("SKIP", "Auto-skipped step " .. step)
		else
			break
		end
	end
	if skipped > 0 then
		VGuide.UI.fMain:RefreshData(false)
	end
end

---------------------------------------------------------
-- NAVIGATE: point pfQuest arrow to current step
---------------------------------------------------------
VG_Enhance._navIdx = 0
VG_Enhance._navStep = 0

function VG_Enhance:Navigate()
	if not VGuide or not VGuide.Display then
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Guide nao carregado.")
		return
	end

	local stepInfo = VGuide.Display:GetCurrentStepInfo()
	local stepText = VGuide.Display:GetStepLabel() or ""
	local curStep = VGuide.Display:GetCurrentStep() or 0

	if DebugLog then DebugLog("VG", "Navigate called. step=" .. curStep .. " textLen=" .. strlen(stepText)) end

	-- Build target list
	local targets = {}
	local seen = {}

	local function add(typ, name, extra)
		if not name or strlen(name) < 2 or seen[name] then return end
		seen[name] = true
		table.insert(targets, {type=typ, name=name, extra=extra})
	end

	local function parseColorTags(text, color, typ)
		local p = 1
		while true do
			local s = string.find(text, color, p, true)
			if not s then break end
			local ns = s + strlen(color)
			local e = string.find(text, "|r", ns, true)
			if not e then break end
			local val = string.sub(text, ns, e - 1)
			val = string.gsub(val, "^%[", "")
			val = string.gsub(val, "%]$", "")
			add(typ, val)
			p = e + 1
		end
	end

	-- Step coordinate
	if stepInfo and stepInfo.x and stepInfo.y then
		add("COORD", (stepInfo.zone or "?") .. " [" .. stepInfo.x .. "," .. stepInfo.y .. "]")
	end

	-- NPCs (pre-parsed + magenta color)
	if stepInfo and stepInfo.npcs then
		for _, n in ipairs(stepInfo.npcs) do add("NPC", n) end
	end
	parseColorTags(stepText, "|c00ff00ff", "NPC")

	-- Quest objectives (#DO blue)
	parseColorTags(stepText, "|c000079d2", "ALVO")

	-- Items -> mobs via pfDB
	if pfDB and pfDB.items and pfDatabase then
		local p = 1
		while true do
			local s = string.find(stepText, "|c00fca742", p, true)
			if not s then break end
			local ns = s + 10
			local e = string.find(stepText, "|r", ns, true)
			if not e then break end
			local raw = string.sub(stepText, ns, e - 1)
			raw = string.gsub(raw, "^%[", "")
			raw = string.gsub(raw, "%]$", "")
			if raw and strlen(raw) > 1 then
				local ids = pfDatabase:GetIDByName(raw, "items")
				if ids then
					for id in pairs(ids) do
						local idata = pfDB.items.data[id]
						if idata and idata["U"] then
							for uid, _ in pairs(idata["U"]) do
								add("MOB_DROP", pfDB.units.loc[uid], raw)
							end
						end
						break
					end
				end
			end
			p = e + 1
		end
	end

	local total = table.getn(targets)
	if DebugLog then DebugLog("VG", "Targets found: " .. total) end

	if total == 0 then
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Nenhum alvo neste passo.")
		return
	end

	-- Cycle
	if self._navStep ~= curStep then
		self._navIdx = 0
		self._navStep = curStep
	end
	self._navIdx = self._navIdx + 1
	if self._navIdx > total then self._navIdx = 1 end

	local pick = targets[self._navIdx]

	-- Target NPC/mob if nearby
	if pick.type ~= "COORD" then
		TargetByName(pick.name, true)
	end

	-- Point pfQuest arrow
	local pointed = false

	-- 1) Search existing pfQuest route
	if pfQuest and pfQuest.route and pfQuest.route.coords then
		for _, data in pairs(pfQuest.route.coords) do
			if data[3] then
				local sp = data[3].spawn or ""
				local ti = data[3].title or ""
				if sp == pick.name or string.find(ti, pick.name, 1, true) then
					pfQuest.route.SetTarget(data[3])
					pointed = true
					break
				end
			end
		end
	end

	-- 2) Look up in pfDB and inject
	if not pointed and pfQuest_PointTo then
		if pick.type == "COORD" and stepInfo and stepInfo.x and stepInfo.y then
			-- Find zone ID (cached)
			local zid = VG_Enhance:GetZoneID(stepInfo.zone)
			if zid > 0 then
				pfQuest_PointTo(stepInfo.x, stepInfo.y, zid, pick.name, "Guide")
				pointed = true
			end
		elseif pfDB and pfDB.units and pfDatabase then
			local ids = pfDatabase:GetIDByName(pick.name, "units")
			if ids then
				for uid in pairs(ids) do
					local ud = pfDB.units.data[uid]
					if ud and ud.coords and ud.coords[1] then
						local ux, uy, uz = unpack(ud.coords[1])
						if ux and uy and uz and uz > 0 then
							pfQuest_PointTo(ux, uy, uz, pick.name, pick.type)
							pointed = true
						end
					end
					break
				end
			end
		end
	end

	-- Chat
	local labels = {COORD="|cffff0000COORD|r", NPC="|cffff00ffNPC|r", ALVO="|cff4444ffALVO|r", MOB_DROP="|cffff8800DROP|r"}
	local lbl = labels[pick.type] or pick.type
	local ext = pick.extra and " (" .. pick.extra .. ")" or ""
	local arrow = pointed and " |cff00ff00-> SETA|r" or ""
	DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r " .. lbl .. " " .. pick.name .. ext .. " [" .. self._navIdx .. "/" .. total .. "]" .. arrow)
	if DebugLog then DebugLog("VG", pick.type .. ": " .. pick.name .. " pointed=" .. (pointed and "Y" or "N")) end
end

---------------------------------------------------------
-- AUTO-GPS: point pfQuest arrow to current step automatically
---------------------------------------------------------
VG_Enhance._zoneCache = {}
function VG_Enhance:GetZoneID(zoneName)
	if not zoneName then return 0 end
	if self._zoneCache[zoneName] then return self._zoneCache[zoneName] end
	if pfDB and pfDB.zones and pfDB.zones.loc then
		for id, name in pairs(pfDB.zones.loc) do
			if name == zoneName then
				self._zoneCache[zoneName] = id
				return id
			end
		end
	end
	return 0
end

function VG_Enhance:PointArrowToCurrentStep()
	if not VGuide or not VGuide.Display then return end
	local stepInfo = VGuide.Display:GetCurrentStepInfo()
	if not stepInfo or not stepInfo.x or not stepInfo.y then return end

	local zid = self:GetZoneID(stepInfo.zone)

	if zid > 0 and pfQuest_PointTo then
		local stepNum = VGuide.Display:GetCurrentStep() or 0
		local stepText = VGuide.Display:GetStepLabel() or ""
		-- Clean step text for display (remove color codes)
		local clean = string.gsub(stepText, "|c%x%x%x%x%x%x%x%x", "")
		clean = string.gsub(clean, "|r", "")
		if strlen(clean) > 50 then clean = string.sub(clean, 1, 47) .. "..." end

		pfQuest_PointTo(stepInfo.x, stepInfo.y, zid, "Passo " .. stepNum, clean)
		if DebugLog then DebugLog("VG", "Auto-GPS: step " .. stepNum .. " -> [" .. stepInfo.x .. "," .. stepInfo.y .. "] " .. (stepInfo.zone or "")) end
	end
end

function VG_Enhance:CreateAutoGPS()
	-- Monitor step changes and auto-point arrow
	self._lastGPSStep = nil
	self._lastGPSGuide = nil

	local gps = CreateFrame("Frame", "VG_AutoGPS", UIParent)
	gps.elapsed = 0
	gps:SetScript("OnUpdate", function()
		gps.elapsed = gps.elapsed + arg1
		if gps.elapsed < 5 then return end
		gps.elapsed = 0

		if not VGuide or not VGuide.Display then return end
		local curStep = VGuide.Display:GetCurrentStep()
		local curGuide = VGuide.Display:GetCurrentGuideID()

		-- Detect step change -> auto-point arrow
		if curStep ~= VG_Enhance._lastGPSStep or curGuide ~= VG_Enhance._lastGPSGuide then
			VG_Enhance._lastGPSStep = curStep
			VG_Enhance._lastGPSGuide = curGuide
			VG_Enhance:PointArrowToCurrentStep()
		end

		-- silent arrival tracking (internal only)
		if pfQuest and pfQuest.route and pfQuest.route._lockedNode then
			local node = pfQuest.route._lockedNode
			VG_Enhance._arrived = node[4] and node[4] < 1.7 or false
		end
	end)
end

---------------------------------------------------------
-- INITIALIZE
---------------------------------------------------------
function VG_Enhance:Init()
	if self.initialized then return end
	DB()
	self:Log("INIT", "VG_Enhance initializing...")
	self:CreateCombatFrame()
	self:CreateAutoQuestFrame()
	self:CreateStepCounterFrame()
	self:CreateProgressBarFrame()
	self:CreateMinimapButton()
	self:CreateArrivalChecker()

	-- Quest objective tracker: refresh on quest log events only (no OnUpdate to avoid crashes)
	local objTracker = CreateFrame("Frame", "VG_ObjTracker", UIParent)
	objTracker:RegisterEvent("QUEST_LOG_UPDATE")
	objTracker:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
	objTracker:SetScript("OnEvent", function()
		if VGuide and VGuide.UI and VGuide.UI.fMain then
			VGuide.UI.fMain:RefreshStepFrameLabel()
		end
	end)

	-- Hook Shift+Click on StepFrame (compact mode)
	local stepFrame = getglobal("VG_MainFrame_StepFrame")
	if stepFrame then
		stepFrame:EnableMouse(true)
		stepFrame:SetScript("OnMouseUp", function()
			if arg1 == "LeftButton" and IsShiftKeyDown() then
				VG_Enhance:Navigate()
			end
		end)
	end

	-- Also hook the main frame for shift+click anywhere on VG
	local mainFrame = getglobal("VG_MainFrame")
	if mainFrame then
		local origOnMouseUp = mainFrame:GetScript("OnMouseUp")
		mainFrame:SetScript("OnMouseUp", function()
			if arg1 == "LeftButton" and IsShiftKeyDown() and not this.isMoving then
				VG_Enhance:Navigate()
				return
			end
			if origOnMouseUp then origOnMouseUp() end
		end)
	end

	self.initialized = true
	self:Log("INIT", "VG_Enhance initialized successfully")

	-- Defer heavy operations to 10s after login to avoid freeze
	local deferFrame = CreateFrame("Frame")
	deferFrame.elapsed = 0
	deferFrame.done = false
	deferFrame:SetScript("OnUpdate", function()
		if this.done then return end
		this.elapsed = this.elapsed + arg1
		if this.elapsed < 10 then return end
		this.done = true
		this:SetScript("OnUpdate", nil)
		-- Now safe to do heavy stuff
		VG_Enhance:CreateAutoGPS()
		VG_Enhance:PointArrowToCurrentStep()
		local vgVer = GetAddOnMetadata("VanillaGuide", "Version") or "?"
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG Enhanced|r v" .. vgVer .. " | Shift+Click = seta")
	end)
end

---------------------------------------------------------
-- COMBAT TRANSPARENCY
---------------------------------------------------------
function VG_Enhance:CreateCombatFrame()
	local f = CreateFrame("Frame", "VG_CombatFrame", UIParent)
	f:RegisterEvent("PLAYER_REGEN_DISABLED")
	f:RegisterEvent("PLAYER_REGEN_ENABLED")
	f:SetScript("OnEvent", function()
		if not DB().combatTransparency then return end
		local mainFrame = getglobal("VG_MainFrame")
		if not mainFrame then return end
		if event == "PLAYER_REGEN_DISABLED" then
			VG_Enhance.inCombat = true
			mainFrame:SetAlpha(DB().combatAlpha)
		elseif event == "PLAYER_REGEN_ENABLED" then
			VG_Enhance.inCombat = false
			mainFrame:SetAlpha(1)
		end
	end)
end

---------------------------------------------------------
-- COMPACT MODE
---------------------------------------------------------
function VG_Enhance:ToggleCompact()
	local mainFrame = getglobal("VG_MainFrame")
	if not mainFrame then return end
	-- Cycle between: 1 step (compact) <-> 2 steps
	if self.compactMode == 1 then
		self.compactMode = 2
		mainFrame:SetHeight(90)
		local sfc = getglobal("VG_MainFrame_ScrollFrameChild")
		if sfc then sfc:GetParent():Hide() end
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Mode: |cff00ccff2 Steps|r")
	else
		self.compactMode = 1
		mainFrame:SetHeight(60)
		local sfc = getglobal("VG_MainFrame_ScrollFrameChild")
		if sfc then sfc:GetParent():Hide() end
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Mode: |cff00ccff1 Step|r")
	end
end

---------------------------------------------------------
-- AUTO ACCEPT / TURN IN QUESTS
---------------------------------------------------------
function VG_Enhance:CreateAutoQuestFrame()
	local f = CreateFrame("Frame", "VG_AutoQuestFrame", UIParent)
	f:RegisterEvent("QUEST_DETAIL")
	f:RegisterEvent("QUEST_PROGRESS")
	f:RegisterEvent("QUEST_COMPLETE")
	f:RegisterEvent("QUEST_FINISHED")
	f:RegisterEvent("QUEST_ACCEPTED")
	f:RegisterEvent("UI_INFO_MESSAGE")
	f:RegisterEvent("QUEST_GREETING")
	f:RegisterEvent("TRAINER_SHOW")
	f:RegisterEvent("TRAINER_CLOSED")
	f:RegisterEvent("SPELLS_CHANGED")
	f:RegisterEvent("MERCHANT_SHOW")
	f:RegisterEvent("MERCHANT_CLOSED")
	f:RegisterEvent("CONFIRM_BINDER")
	f.questJustHandled = false
	f.greetingSelected = false
	f.trainerVisited = false
	f.merchantVisited = false

	-- Helper: check if current step mentions a quest name
	local function stepMentionsQuest(questName)
		if not questName or not VGuide or not VGuide.Display then return false end
		local text = VGuide.Display:GetStepLabel() or ""
		return string.find(text, questName, 1, true) and true or false
	end
	f:SetScript("OnEvent", function()
		-- Auto accept/turn-in (ONLY quests mentioned in current step)
		if DB().autoAcceptTurnIn then
			if event == "QUEST_GREETING" then
				-- NPC has multiple quests listed. Select the one matching current step.
				local stepText = (VGuide and VGuide.Display and VGuide.Display:GetStepLabel()) or ""
				local lt = strlower(stepText)
				local isAccept = string.find(lt, "aceite", 1, true)
				local isTurnIn = string.find(lt, "entregue", 1, true)

				-- Try active quests first (turn-ins)
				local numActive = GetNumActiveQuests() or 0
				for i = 1, numActive do
					local title = GetActiveTitle(i)
					if title and isTurnIn and string.find(stepText, title, 1, true) then
						SelectActiveQuest(i)
						if DebugLog then DebugLog("QUEST", "GREETING: selected active quest: " .. title) end
						return
					end
				end
				-- No fallback for active quests either: must match by name

				-- Try available quests (accepts) - match by name in step text
				local numAvail = GetNumAvailableQuests() or 0
				-- Strip color codes from step text for matching
				local cleanStep = string.gsub(stepText, "|c%x%x%x%x%x%x%x%x", "")
				cleanStep = string.gsub(cleanStep, "|r", "")
				for i = 1, numAvail do
					local title = GetAvailableTitle(i)
					if title and isAccept and string.find(cleanStep, title, 1, true) then
						f.greetingSelected = true
						SelectAvailableQuest(i)
						if DebugLog then DebugLog("QUEST", "GREETING: matched quest: " .. title) end
						return
					end
				end
				-- No fallback: only accept quests that match step text by name
				if DebugLog then DebugLog("QUEST", "GREETING: no name match in available quests") end

				if DebugLog then DebugLog("QUEST", "GREETING: no match. avail=" .. numAvail .. " active=" .. numActive) end
			elseif event == "QUEST_DETAIL" then
				local qTitle = GetTitleText() or ""
				local text = (VGuide and VGuide.Display and VGuide.Display:GetStepLabel()) or ""
				local clean = string.gsub(text, "|c%x%x%x%x%x%x%x%x", "")
				clean = string.gsub(clean, "|r", "")
				local isAccept = string.find(strlower(clean), "aceite", 1, true)
				local nameMatch = string.find(clean, qTitle, 1, true)

				-- Accept if: came from our GREETING selection, OR step mentions exact name
				if f.greetingSelected or (isAccept and nameMatch) then
					f.greetingSelected = false
					if DebugLog then DebugLog("QUEST", "Auto-accepting: " .. qTitle) end
					AcceptQuest()
					f.questJustHandled = true
				else
					f.greetingSelected = false
				end
			elseif event == "QUEST_PROGRESS" then
				if IsQuestCompletable() then
					-- Cooldown to prevent loop
					if not f.lastComplete or f.lastComplete + 2 < GetTime() then
						f.lastComplete = GetTime()
						VG_Enhance:Log("QUEST", "Auto-completing quest")
						CompleteQuest()
						f.questJustHandled = true
					end
				end
			elseif event == "QUEST_COMPLETE" then
				-- Cooldown to prevent loop
				if not f.lastReward or f.lastReward + 2 < GetTime() then
					f.lastReward = GetTime()
					if GetNumQuestChoices() == 0 then
						GetQuestReward()
						f.questJustHandled = true
					elseif GetNumQuestChoices() == 1 then
						GetQuestReward(1)
						f.questJustHandled = true
					end
				end
			end
		end

		-- Auto-advance step after quest interaction
		if event == "QUEST_FINISHED" or event == "QUEST_ACCEPTED" then
			if f.questJustHandled then
				f.questJustHandled = false
				if VGuide and VGuide.Display and VGuide.UI then
					-- Mark current step as done
					local gid = VGuide.Display:GetCurrentGuideID()
					local stp = VGuide.Display:GetCurrentStep()
					VG_Enhance:MarkStepDone(gid, stp)
					-- Advance
					VGuide.Display:NextStep()
					VGuide.UI.fMain:RefreshData(false)
					VG_Enhance:Log("STEP", "Auto-advanced after quest interaction")
					-- Try skip already-done steps
					-- TryAutoSkip disabled: was causing steps to skip incorrectly
				end
			end
		end

		-- Helper: check if current step text contains keywords
		local function stepContains(...)
			if not VGuide or not VGuide.Display then return false end
			local text = VGuide.Display:GetStepLabel() or ""
			text = strlower(text)
			for i = 1, arg.n do
				if string.find(text, strlower(arg[i]), 1, true) then return true end
			end
			return false
		end

		-- Helper: advance step safely
		local function advanceStep(reason)
			if not VGuide or not VGuide.Display or not VGuide.UI then return end
			local gid = VGuide.Display:GetCurrentGuideID()
			local stp = VGuide.Display:GetCurrentStep()
			VG_Enhance:MarkStepDone(gid, stp)
			VGuide.Display:NextStep()
			VGuide.UI.fMain:RefreshData(false)
			VG_Enhance:Log("STEP", "Auto-advanced: " .. reason)
			VG_Enhance:TryAutoSkip()
		end

		-- Trainer: auto-advance if step mentions trainer/habilidades/magias/skills
		if event == "TRAINER_SHOW" then
			f.trainerVisited = true
		elseif event == "TRAINER_CLOSED" then
			if f.trainerVisited then
				f.trainerVisited = false
				if stepContains("trainer", "habilidades", "magias", "novas magias", "Aprenda", "treinamento", "Swords", "Weapon Master") then
					advanceStep("trainer closed")
				end
			end
		end

		-- Spells changed: if step is about learning skills and we just visited trainer
		if event == "SPELLS_CHANGED" then
			if stepContains("Aprenda", "habilidades", "magias", "treinamento", "Swords") then
				advanceStep("spell learned")
			end
		end

		-- Merchant: auto-advance if step mentions buying/compre/trade supplies
		if event == "MERCHANT_SHOW" then
			f.merchantVisited = true
		elseif event == "MERCHANT_CLOSED" then
			if f.merchantVisited then
				f.merchantVisited = false
				if stepContains("Compre", "Trade Supplies", "compre") then
					advanceStep("merchant closed")
				end
			end
		end

		-- Hearthstone: auto-advance if step mentions Hearthstone/hearth
		if event == "CONFIRM_BINDER" or event == "HEARTHSTONE_BOUND" then
			if stepContains("Hearthstone", "hearth", "Hearth") then
				advanceStep("hearthstone set")
			end
		end

		-- First Aid trainer: advance if step mentions First Aid
		if event == "TRAINER_CLOSED" then
			if stepContains("First Aid") then
				advanceStep("first aid trainer")
			end
		end
	end)
end

---------------------------------------------------------
-- STEP COUNTER
---------------------------------------------------------
function VG_Enhance:CreateStepCounterFrame()
	local f = CreateFrame("Frame", "VG_StepCounter", UIParent)
	f:SetWidth(120)
	f:SetHeight(16)
	f:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
	f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	f.text:SetAllPoints()
	f.text:SetJustifyH("LEFT")
	f.text:SetTextColor(1, 0.82, 0, 1)
	f:Hide()
end

function VG_Enhance:UpdateStepCounter(current, total)
	if not DB().showStepCounter then
		local f = getglobal("VG_StepCounter")
		if f then f:Hide() end
		return
	end
	local f = getglobal("VG_StepCounter")
	if f and current and total and total > 0 then
		local pct = math.floor((current / total) * 100)
		f.text:SetText("|cff00ff00" .. current .. "|r/|cffaaaaaa" .. total .. "|r  |cffffcc00" .. pct .. "%|r")
		f:Show()
	end
end

---------------------------------------------------------
-- PROGRESS BAR
---------------------------------------------------------
function VG_Enhance:CreateProgressBarFrame()
	local f = CreateFrame("Frame", "VG_ProgressBar", UIParent)
	f:SetWidth(200)
	f:SetHeight(10)
	f:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
	f:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 8,
		insets = { left = 2, right = 2, top = 2, bottom = 2 },
	})
	f:SetBackdropColor(0.05, 0.05, 0.05, 0.9)
	f:SetBackdropBorderColor(0.3, 0.3, 0.3, 0.8)

	f.bar = f:CreateTexture(nil, "ARTWORK")
	f.bar:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
	f.bar:SetPoint("TOPLEFT", f, "TOPLEFT", 2, -2)
	f.bar:SetHeight(6)
	f.bar:SetWidth(1)
	f.bar:SetVertexColor(0.1, 0.7, 0.1, 1)

	f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	f.text:SetPoint("CENTER", f, "CENTER", 0, 0)
	f.text:SetTextColor(1, 1, 1, 1)
	f:Hide()
end

function VG_Enhance:UpdateProgressBar(current, total)
	if not DB().showProgressBar then
		local f = getglobal("VG_ProgressBar")
		if f then f:Hide() end
		return
	end
	local f = getglobal("VG_ProgressBar")
	if f and current and total and total > 0 then
		local pct = current / total
		local barWidth = math.max(1, (f:GetWidth() - 4) * pct)
		f.bar:SetWidth(barWidth)
		local percent = math.floor(pct * 100)
		f.text:SetText(percent .. "%")
		f:Show()
	end
end

---------------------------------------------------------
-- TIME ESTIMATE
---------------------------------------------------------
function VG_Enhance:EstimateTime(stepsRemaining)
	if not DB().timeEstimate then return nil end
	local mins = stepsRemaining * 2
	if mins >= 60 then
		return math.floor(mins / 60) .. "h " .. (mins - math.floor(mins / 60) * 60) .. "min"
	else
		return mins .. " min"
	end
end

---------------------------------------------------------
-- STEP TYPE COLORS (background tint by action type)
---------------------------------------------------------
function VG_Enhance:GetStepTypeColor(stepText)
	if not DB().stepTypeColors then return nil end
	if not stepText then return nil end
	-- Kill/combat steps (red tint)
	if string.find(stepText, "|c000079d2") then
		return 0.25, 0.08, 0.08, 0.6
	end
	-- Accept quest steps (cyan tint)
	if string.find(stepText, "|c0000ffff") then
		return 0.08, 0.15, 0.25, 0.6
	end
	-- Turn in steps (green tint)
	if string.find(stepText, "|c0000ff00") then
		return 0.08, 0.25, 0.08, 0.6
	end
	-- Skip steps (dark red)
	if string.find(stepText, "|c00a80000") then
		return 0.15, 0.05, 0.05, 0.6
	end
	return nil
end

---------------------------------------------------------
-- COMPLETED STEP GRAY
---------------------------------------------------------
function VG_Enhance:GetCompletedStepColor()
	if not DB().completedStepGray then return nil end
	return 0.35, 0.35, 0.35, 0.5
end

---------------------------------------------------------
-- MINIMAP BUTTON
---------------------------------------------------------
function VG_Enhance:CreateMinimapButton()
	local btn = CreateFrame("Button", "VG_MinimapButton", Minimap)
	btn:SetWidth(28)
	btn:SetHeight(28)
	btn:SetFrameStrata("MEDIUM")
	btn:SetFrameLevel(8)
	btn:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 2, -2)
	btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

	local icon = btn:CreateTexture(nil, "BACKGROUND")
	icon:SetTexture("Interface\\Icons\\INV_Misc_Book_09")
	icon:SetWidth(20)
	icon:SetHeight(20)
	icon:SetPoint("CENTER", btn, "CENTER", 0, 0)

	local border = btn:CreateTexture(nil, "OVERLAY")
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	border:SetWidth(52)
	border:SetHeight(52)
	border:SetPoint("TOPLEFT", btn, "TOPLEFT", -4, 4)

	btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	btn:SetScript("OnClick", function()
		local mainFrame = getglobal("VG_MainFrame")
		if not mainFrame then return end
		if arg1 == "LeftButton" then
			if mainFrame:IsVisible() then
				mainFrame:Hide()
			else
				mainFrame:Show()
			end
		elseif arg1 == "RightButton" then
			VG_Enhance:ToggleCompact()
		end
	end)
	btn:SetScript("OnEnter", function()
		GameTooltip:SetOwner(this, "ANCHOR_LEFT")
		GameTooltip:AddLine("|cff00ff00VanillaGuide Enhanced|r")
		GameTooltip:AddLine("Clique esquerdo: Abrir/Fechar", 1, 1, 1)
		GameTooltip:AddLine("Clique direito: Modo Compacto", 1, 1, 1)
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
end

---------------------------------------------------------
-- ARRIVAL SOUND (plays when near waypoint)
---------------------------------------------------------
function VG_Enhance:CreateArrivalChecker()
	self.lastWaypointX = nil
	self.lastWaypointY = nil
	self.arrivedAtWaypoint = false

	local f = CreateFrame("Frame", "VG_ArrivalChecker", UIParent)
	f.elapsed = 0
	f:SetScript("OnUpdate", function()
		if not DB().arrivalSound then return end
		f.elapsed = f.elapsed + arg1
		if f.elapsed < 2 then return end
		f.elapsed = 0

		if not VG_Enhance.lastWaypointX or VG_Enhance.arrivedAtWaypoint then return end

		local px, py = GetPlayerMapPosition("player")
		if px == 0 and py == 0 then return end
		px = px * 100
		py = py * 100

		local dx = px - VG_Enhance.lastWaypointX
		local dy = py - VG_Enhance.lastWaypointY
		local dist = math.sqrt(dx * dx + dy * dy)

		if dist < 3 then
			PlaySound("igQuestListOpen")
			VG_Enhance.arrivedAtWaypoint = true
			VG_Enhance:Log("ARRIVAL", "Arrived at waypoint " .. VG_Enhance.lastWaypointX .. "," .. VG_Enhance.lastWaypointY)
		end
	end)
end

function VG_Enhance:SetWaypoint(x, y)
	self.lastWaypointX = x
	self.lastWaypointY = y
	self.arrivedAtWaypoint = false
end

---------------------------------------------------------
-- SHARE STEP TO CHAT
---------------------------------------------------------
function VG_Enhance:ShareStep(stepText, channel)
	if not stepText then return end
	-- Remove color codes for clean text
	local clean = string.gsub(stepText, "|c%x%x%x%x%x%x%x%x", "")
	clean = string.gsub(clean, "|r", "")
	if channel == "party" then
		SendChatMessage("[VG] " .. clean, "PARTY")
	elseif channel == "say" then
		SendChatMessage("[VG] " .. clean, "SAY")
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00[VG Step]:|r " .. clean)
	end
end

---------------------------------------------------------
-- SEARCH WITHIN GUIDE
---------------------------------------------------------
function VG_Enhance:SearchGuide(oDisplay, keyword)
	if not keyword or strlen(keyword) < 2 then
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Digite pelo menos 2 caracteres pra buscar")
		return
	end
	keyword = string.lower(keyword)
	local found = false
	local scrollDisplay = oDisplay:GetScrollFrameDisplay()
	if not scrollDisplay then return end
	for k, text in ipairs(scrollDisplay) do
		if text then
			local clean = string.gsub(text, "|c%x%x%x%x%x%x%x%x", "")
			clean = string.gsub(clean, "|r", "")
			if string.find(string.lower(clean), keyword, 1, true) then
				DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Passo " .. k .. ": " .. clean)
				found = true
			end
		end
	end
	if not found then
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Nada encontrado para '" .. keyword .. "'")
	end
end

---------------------------------------------------------
-- SLASH COMMANDS
---------------------------------------------------------
SLASH_VGENHANCE1 = "/vge"
SlashCmdList.VGENHANCE = function(msg)
	msg = msg or ""
	local cmd = string.lower(msg)

	-- Commands with arguments
	local searchWord = nil
	if string.find(cmd, "^search ") then
		searchWord = string.sub(msg, 8)
	end
	local shareChannel = nil
	if string.find(cmd, "^share") then
		shareChannel = string.sub(msg, 7)
		if shareChannel == "" then shareChannel = nil end
	end

	local db = DB()

	if cmd == "combat" then
		db.combatTransparency = not db.combatTransparency
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Transparencia em combate: " .. (db.combatTransparency and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "compact" then
		VG_Enhance:ToggleCompact()
	elseif cmd == "autoquest" then
		db.autoAcceptTurnIn = not db.autoAcceptTurnIn
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Auto aceitar/entregar: " .. (db.autoAcceptTurnIn and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "counter" then
		db.showStepCounter = not db.showStepCounter
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Contador: " .. (db.showStepCounter and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "progress" then
		db.showProgressBar = not db.showProgressBar
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Barra de progresso: " .. (db.showProgressBar and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "time" then
		db.timeEstimate = not db.timeEstimate
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Estimativa de tempo: " .. (db.timeEstimate and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "skip" then
		db.rightClickSkip = not db.rightClickSkip
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Right-click pular: " .. (db.rightClickSkip and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "colors" then
		db.stepTypeColors = not db.stepTypeColors
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Cores por tipo: " .. (db.stepTypeColors and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "gray" then
		db.completedStepGray = not db.completedStepGray
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Steps feitos em cinza: " .. (db.completedStepGray and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "sound" then
		db.arrivalSound = not db.arrivalSound
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Som ao chegar: " .. (db.arrivalSound and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "autoskip" then
		db.autoSkipCompleted = not db.autoSkipCompleted
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Auto-pular feitos: " .. (db.autoSkipCompleted and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif cmd == "reset" then
		db.completedSteps = {}
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Memoria de steps resetada!")
	elseif searchWord then
		if VGuide and VGuide.Display then
			VG_Enhance:SearchGuide(VGuide.Display, searchWord)
		else
			DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Guia nao carregado")
		end
	elseif string.find(cmd, "^share") then
		if VGuide and VGuide.Display then
			local label = VGuide.Display:GetStepLabel()
			VG_Enhance:ShareStep(label, shareChannel)
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00=== VanillaGuide Enhanced ===|r")
		DEFAULT_CHAT_FRAME:AddMessage("|cffaaaa00  Funcoes:|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge combat    - Transparencia em combate: " .. (db.combatTransparency and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge compact   - Modo compacto")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge autoquest - Auto aceitar/entregar: " .. (db.autoAcceptTurnIn and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge skip      - Right-click pular: " .. (db.rightClickSkip and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("|cffaaaa00  Visual:|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge counter   - Contador: " .. (db.showStepCounter and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge progress  - Barra de progresso: " .. (db.showProgressBar and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge time      - Estimativa de tempo: " .. (db.timeEstimate and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge colors    - Cores por tipo: " .. (db.stepTypeColors and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge gray      - Steps feitos cinza: " .. (db.completedStepGray and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge sound     - Som ao chegar: " .. (db.arrivalSound and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge autoskip  - Auto-pular feitos: " .. (db.autoSkipCompleted and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge reset     - Resetar memoria de steps")
		DEFAULT_CHAT_FRAME:AddMessage("|cffaaaa00  Extras:|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge search <texto> - Buscar no guia")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share          - Mostra step no chat")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share party    - Manda step pro grupo")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share say      - Manda step no /say")
	end
end
