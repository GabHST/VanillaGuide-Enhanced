--[[--------------------------------------------------
VG_Enhancements.lua
Description: Quality of life improvements for VanillaGuide
Features:
  - Combat transparency (optional, default off)
  - Compact mode toggle (optional, default off)
  - Auto-accept/turn-in quests
  - Right-click to skip step
  - Step counter display
  - Progress bar
  - Time estimate per zone
------------------------------------------------------]]

VG_Enhance = {}
VG_Enhance.inCombat = false
VG_Enhance.compactMode = false
VG_Enhance.initialized = false
VG_Enhance.logMax = 500

---------------------------------------------------------
-- DEBUG LOG (silent, saved to VG_DebugLog variable)
-- Player never sees this. Check WTF SavedVariables.
---------------------------------------------------------
function VG_Enhance:Log(category, message)
	if not VG_DebugLog then VG_DebugLog = {} end
	local timestamp = date("%H:%M:%S")
	local entry = timestamp .. " [" .. (category or "?") .. "] " .. (message or "")
	table.insert(VG_DebugLog, entry)
	-- Keep log size manageable
	while getn(VG_DebugLog) > self.logMax do
		table.remove(VG_DebugLog, 1)
	end
end

-- Safe DB access
local function DB()
	if not VG_EnhanceDB then
		VG_EnhanceDB = {
			combatTransparency = false,
			combatAlpha = 0.3,
			autoAcceptTurnIn = true,
			autoAdvance = true,
			rightClickSkip = true,
			showStepCounter = true,
			showProgressBar = true,
			autoDetectGuide = true,
			timeEstimate = true,
		}
	end
	return VG_EnhanceDB
end

-- Initialize
function VG_Enhance:Init()
	if self.initialized then return end
	DB() -- ensure defaults exist
	self:Log("INIT", "VG_Enhance initializing...")
	self:CreateCombatFrame()
	self:CreateAutoQuestFrame()
	self:CreateStepCounterFrame()
	self:CreateProgressBarFrame()
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
			VG_Enhance:Log("COMBAT", "Entered combat - alpha set to " .. DB().combatAlpha)
		elseif event == "PLAYER_REGEN_ENABLED" then
			VG_Enhance.inCombat = false
			mainFrame:SetAlpha(1)
			VG_Enhance:Log("COMBAT", "Left combat - alpha restored")
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
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Modo compacto: OFF")
	else
		self.compactMode = true
		mainFrame.vg_originalHeight = mainFrame:GetHeight()
		mainFrame:SetHeight(60)
		local sfc = getglobal("VG_MainFrame_ScrollFrameChild")
		if sfc then sfc:GetParent():Hide() end
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Modo compacto: ON")
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
	f:SetScript("OnEvent", function()
		if not DB().autoAcceptTurnIn then return end
		if event == "QUEST_DETAIL" then
			VG_Enhance:Log("QUEST", "Auto-accepting quest")
			AcceptQuest()
		elseif event == "QUEST_PROGRESS" then
			if IsQuestCompletable() then
				VG_Enhance:Log("QUEST", "Auto-completing quest")
				CompleteQuest()
			end
		elseif event == "QUEST_COMPLETE" then
			if GetNumQuestChoices() == 0 then
				VG_Enhance:Log("QUEST", "Auto-reward (no choices)")
				GetQuestReward()
			elseif GetNumQuestChoices() == 1 then
				VG_Enhance:Log("QUEST", "Auto-reward (1 choice)")
				GetQuestReward(1)
			else
				VG_Enhance:Log("QUEST", "Multiple rewards - player must choose (" .. GetNumQuestChoices() .. " choices)")
			end
			-- Multiple rewards: let player choose
		end
	end)
end

---------------------------------------------------------
-- STEP COUNTER (Passo 14/47)
---------------------------------------------------------
function VG_Enhance:CreateStepCounterFrame()
	local f = CreateFrame("Frame", "VG_StepCounter", UIParent)
	f:SetWidth(100)
	f:SetHeight(16)
	f:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
	f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	f.text:SetAllPoints()
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
	f:SetHeight(8)
	f:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
	f:SetBackdrop({bgFile = "Interface\\Tooltips\\UI-Tooltip-Background"})
	f:SetBackdropColor(0.1, 0.1, 0.1, 0.8)

	f.bar = f:CreateTexture(nil, "ARTWORK")
	f.bar:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
	f.bar:SetPoint("TOPLEFT", f, "TOPLEFT", 1, -1)
	f.bar:SetHeight(6)
	f.bar:SetWidth(1)
	f.bar:SetVertexColor(0.2, 0.8, 0.2, 1)

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
		local barWidth = math.max(1, (f:GetWidth() - 2) * pct)
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
-- SLASH COMMANDS (toggle on/off by typing again)
---------------------------------------------------------
SLASH_VGENHANCE1 = "/vge"
SlashCmdList.VGENHANCE = function(msg)
	msg = string.lower(msg or "")
	local db = DB()
	if msg == "combat" then
		db.combatTransparency = not db.combatTransparency
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Transparencia em combate: " .. (db.combatTransparency and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif msg == "compact" then
		VG_Enhance:ToggleCompact()
	elseif msg == "autoquest" then
		db.autoAcceptTurnIn = not db.autoAcceptTurnIn
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Auto aceitar/entregar quests: " .. (db.autoAcceptTurnIn and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif msg == "counter" then
		db.showStepCounter = not db.showStepCounter
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Contador de steps: " .. (db.showStepCounter and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif msg == "progress" then
		db.showProgressBar = not db.showProgressBar
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Barra de progresso: " .. (db.showProgressBar and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif msg == "time" then
		db.timeEstimate = not db.timeEstimate
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Estimativa de tempo: " .. (db.timeEstimate and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	elseif msg == "skip" then
		db.rightClickSkip = not db.rightClickSkip
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Right-click pra pular step: " .. (db.rightClickSkip and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00=== VanillaGuide Enhanced ===|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge combat    - Transparencia em combate: " .. (db.combatTransparency and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge compact   - Modo compacto")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge autoquest - Auto aceitar/entregar: " .. (db.autoAcceptTurnIn and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge counter   - Contador de steps: " .. (db.showStepCounter and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge progress  - Barra de progresso: " .. (db.showProgressBar and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge time      - Estimativa de tempo: " .. (db.timeEstimate and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge skip      - Right-click pular step: " .. (db.rightClickSkip and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	end
end
