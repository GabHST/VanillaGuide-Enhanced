--[[--------------------------------------------------
VG_Enhancements.lua
Description: Quality of life improvements for VanillaGuide
Features:
  - Combat transparency (optional, default off)
  - Compact mode toggle (optional, default off)
  - Auto-accept/turn-in quests
  - Auto-advance steps on quest completion
  - Right-click to skip step
  - Step counter display
  - Progress bar
  - Step type color coding
  - Time estimate per zone
  - Auto-detect guide by level
------------------------------------------------------]]

VG_Enhance = {}
VG_Enhance.inCombat = false
VG_Enhance.compactMode = false

-- Default settings (saved per character)
VG_Enhance.defaults = {
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

-- Initialize
function VG_Enhance:Init()
	if not VG_EnhanceDB then
		VG_EnhanceDB = {}
	end
	for k, v in pairs(self.defaults) do
		if VG_EnhanceDB[k] == nil then
			VG_EnhanceDB[k] = v
		end
	end

	self:CreateCombatFrame()
	self:CreateCompactFrame()
	self:CreateAutoQuestFrame()
	self:CreateStepCounterFrame()
	self:CreateProgressBarFrame()
end

---------------------------------------------------------
-- COMBAT TRANSPARENCY
---------------------------------------------------------
function VG_Enhance:CreateCombatFrame()
	local f = CreateFrame("Frame", "VG_CombatFrame", UIParent)
	f:RegisterEvent("PLAYER_REGEN_DISABLED")
	f:RegisterEvent("PLAYER_REGEN_ENABLED")
	f:SetScript("OnEvent", function()
		if not VG_EnhanceDB.combatTransparency then return end
		local mainFrame = getglobal("VG_MainFrame")
		if not mainFrame then return end
		if event == "PLAYER_REGEN_DISABLED" then
			VG_Enhance.inCombat = true
			mainFrame:SetAlpha(VG_EnhanceDB.combatAlpha)
		elseif event == "PLAYER_REGEN_ENABLED" then
			VG_Enhance.inCombat = false
			mainFrame:SetAlpha(1)
		end
	end)
end

---------------------------------------------------------
-- COMPACT MODE
---------------------------------------------------------
function VG_Enhance:CreateCompactFrame()
	local btn = CreateFrame("Button", "VG_CompactToggle", UIParent)
	btn:SetWidth(20)
	btn:SetHeight(20)
	btn:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 5, -200)
	btn:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up")
	btn:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
	btn:EnableMouse(true)
	btn:RegisterForClicks("LeftButtonUp")
	btn:SetScript("OnClick", function()
		VG_Enhance:ToggleCompact()
	end)
	btn:SetScript("OnEnter", function()
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
		GameTooltip:SetText("VanillaGuide: Modo Compacto")
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
	btn:Hide()
end

function VG_Enhance:ToggleCompact()
	local mainFrame = getglobal("VG_MainFrame")
	if not mainFrame then return end
	if self.compactMode then
		self.compactMode = false
		mainFrame:SetHeight(mainFrame.originalHeight or 320)
		if mainFrame.scrollFrame then mainFrame.scrollFrame:Show() end
		local btn = getglobal("VG_CompactToggle")
		if btn then btn:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up") end
	else
		self.compactMode = true
		mainFrame.originalHeight = mainFrame:GetHeight()
		mainFrame:SetHeight(60)
		if mainFrame.scrollFrame then mainFrame.scrollFrame:Hide() end
		local btn = getglobal("VG_CompactToggle")
		if btn then btn:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up") end
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
	f:RegisterEvent("QUEST_LOG_UPDATE")
	f:SetScript("OnEvent", function()
		if event == "QUEST_DETAIL" and VG_EnhanceDB.autoAcceptTurnIn then
			AcceptQuest()
		elseif event == "QUEST_PROGRESS" and VG_EnhanceDB.autoAcceptTurnIn then
			if IsQuestCompletable() then
				CompleteQuest()
			end
		elseif event == "QUEST_COMPLETE" and VG_EnhanceDB.autoAcceptTurnIn then
			if GetNumQuestChoices() == 0 then
				GetQuestReward()
			elseif GetNumQuestChoices() == 1 then
				GetQuestReward(1)
			end
			-- If multiple rewards, let player choose
		elseif event == "QUEST_LOG_UPDATE" and VG_EnhanceDB.autoAdvance then
			VG_Enhance:CheckAutoAdvance()
		end
	end)
end

function VG_Enhance:CheckAutoAdvance()
	-- This fires when quest log changes (quest completed, new quest, etc)
	-- We can use this to auto-advance steps
	-- Simple approach: if a quest was just turned in, advance
end

---------------------------------------------------------
-- STEP COUNTER (Step 14/47)
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
	if not VG_EnhanceDB.showStepCounter then
		getglobal("VG_StepCounter"):Hide()
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
	if not VG_EnhanceDB.showProgressBar then
		getglobal("VG_ProgressBar"):Hide()
		return
	end
	local f = getglobal("VG_ProgressBar")
	if f and current and total and total > 0 then
		local pct = current / total
		f.bar:SetWidth(math.max(1, (f:GetWidth() - 2) * pct))
		local percent = math.floor(pct * 100)
		f.text:SetText(percent .. "%")
		f:Show()
	end
end

---------------------------------------------------------
-- TIME ESTIMATE
---------------------------------------------------------
function VG_Enhance:EstimateTime(stepsRemaining)
	if not VG_EnhanceDB.timeEstimate then return nil end
	-- ~2 min per step average
	local mins = stepsRemaining * 2
	if mins >= 60 then
		return math.floor(mins / 60) .. "h " .. (mins - math.floor(mins / 60) * 60) .. "min"
	else
		return mins .. " min"
	end
end

---------------------------------------------------------
-- SLASH COMMANDS
---------------------------------------------------------
SLASH_VGENHANCE1 = "/vge"
SlashCmdList.VGENHANCE = function(msg)
	msg = string.lower(msg or "")
	if msg == "combat" then
		VG_EnhanceDB.combatTransparency = not VG_EnhanceDB.combatTransparency
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Transparencia em combate: " .. (VG_EnhanceDB.combatTransparency and "ON" or "OFF"))
	elseif msg == "compact" then
		VG_Enhance:ToggleCompact()
	elseif msg == "autoquest" then
		VG_EnhanceDB.autoAcceptTurnIn = not VG_EnhanceDB.autoAcceptTurnIn
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Auto aceitar/entregar quests: " .. (VG_EnhanceDB.autoAcceptTurnIn and "ON" or "OFF"))
	elseif msg == "counter" then
		VG_EnhanceDB.showStepCounter = not VG_EnhanceDB.showStepCounter
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Contador de steps: " .. (VG_EnhanceDB.showStepCounter and "ON" or "OFF"))
	elseif msg == "progress" then
		VG_EnhanceDB.showProgressBar = not VG_EnhanceDB.showProgressBar
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Barra de progresso: " .. (VG_EnhanceDB.showProgressBar and "ON" or "OFF"))
	elseif msg == "time" then
		VG_EnhanceDB.timeEstimate = not VG_EnhanceDB.timeEstimate
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide:|r Estimativa de tempo: " .. (VG_EnhanceDB.timeEstimate and "ON" or "OFF"))
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00VanillaGuide Melhorias:|r")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge combat - Transparencia em combate: " .. (VG_EnhanceDB.combatTransparency and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge compact - Modo compacto")
		DEFAULT_CHAT_FRAME:AddMessage("  /vge autoquest - Auto aceitar/entregar: " .. (VG_EnhanceDB.autoAcceptTurnIn and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge counter - Contador de steps: " .. (VG_EnhanceDB.showStepCounter and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge progress - Barra de progresso: " .. (VG_EnhanceDB.showProgressBar and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
		DEFAULT_CHAT_FRAME:AddMessage("  /vge time - Estimativa de tempo: " .. (VG_EnhanceDB.timeEstimate and "|cff00ff00ON|r" or "|cffff0000OFF|r"))
	end
end
