
-- Auto-Update Notification (reads LaunchSoloCraft update log)
do
    local f = CreateFrame("Frame")
    f:RegisterEvent("PLAYER_ENTERING_WORLD")
    f:SetScript("OnEvent", function()
        f:UnregisterEvent("PLAYER_ENTERING_WORLD")
        -- Read update log after 5 seconds
        local t = CreateFrame("Frame")
        t.elapsed = 0
        t:SetScript("OnUpdate", function()
            this.elapsed = this.elapsed + arg1
            if this.elapsed > 5 then
                this:SetScript("OnUpdate", nil)
                local name = GetAddOnMetadata("VanillaGuide", "Title") or "VanillaGuide"
                local ver = GetAddOnMetadata("VanillaGuide", "Version") or "?"
                DEFAULT_CHAT_FRAME:AddMessage("|cff00ff88[" .. name .. "]|r v" .. ver .. " loaded")
            end
        end)
    end)
end
