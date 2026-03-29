--[[--------------------------------------------------
VG_Enhancements.lua
Description: Quality of life improvements for VanillaGuide Enhanced
------------------------------------------------------]]

VG_Enhance = {}
VG_Enhance.inCombat = false
VG_Enhance.compactMode = false
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
			showProgressBar = true,
			timeEstimate = true,
			stepTypeColors = true,
			completedStepGray = true,
			arrivalSound = true,
			shareStep = true,
		}
	end
	return VG_EnhanceDB
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
	self.initialized = true
	self:Log("INIT", "VG_Enhance initialized successfully")
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
	if self.compactMode then
		self.compactMode = false
		mainFrame:SetHeight(mainFrame.vg_originalHeight or 320)
		local sfc = getglobal("VG_MainFrame_ScrollFrameChild")
		if sfc then sfc:GetParent():Show() end
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Modo compacto: |cffff0000OFF|r")
	else
		self.compactMode = true
		mainFrame.vg_originalHeight = mainFrame:GetHeight()
		mainFrame:SetHeight(60)
		local sfc = getglobal("VG_MainFrame_ScrollFrameChild")
		if sfc then sfc:GetParent():Hide() end
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VG:|r Modo compacto: |cff00ff00ON|r")
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
	f.questJustHandled = false
	f:SetScript("OnEvent", function()
		-- Auto accept/turn-in
		if DB().autoAcceptTurnIn then
			if event == "QUEST_DETAIL" then
				VG_Enhance:Log("QUEST", "Auto-accepting quest")
				AcceptQuest()
				f.questJustHandled = true
			elseif event == "QUEST_PROGRESS" then
				if IsQuestCompletable() then
					VG_Enhance:Log("QUEST", "Auto-completing quest")
					CompleteQuest()
					f.questJustHandled = true
				end
			elseif event == "QUEST_COMPLETE" then
				if GetNumQuestChoices() == 0 then
					GetQuestReward()
					f.questJustHandled = true
				elseif GetNumQuestChoices() == 1 then
					GetQuestReward(1)
					f.questJustHandled = true
				end
			end
		end

		-- Auto-advance step after quest interaction
		if event == "QUEST_FINISHED" or event == "QUEST_ACCEPTED" then
			if f.questJustHandled then
				f.questJustHandled = false
				-- Advance to next step in VanillaGuide
				if VGuide and VGuide.Display and VGuide.UI then
					VGuide.Display:NextStep()
					VGuide.UI.fMain:RefreshData(false)
					VG_Enhance:Log("STEP", "Auto-advanced step after quest interaction")
				end
			end
		end

		-- Also advance on "Quest completed" system message
		if event == "UI_INFO_MESSAGE" then
			if arg1 and string.find(arg1, "completed") then
				if VGuide and VGuide.Display and VGuide.UI then
					VGuide.Display:NextStep()
					VGuide.UI.fMain:RefreshData(false)
					VG_Enhance:Log("STEP", "Auto-advanced step on quest completed message")
				end
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
	if f and current and total then
		f.text:SetText("Passo " .. current .. "/" .. total)
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
		DEFAULT_CHAT_FRAME:AddMessage("|cffaaaa00  Extras:|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge search <texto> - Buscar no guia")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share          - Mostra step no chat")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share party    - Manda step pro grupo")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge share say      - Manda step no /say")
	end
end
