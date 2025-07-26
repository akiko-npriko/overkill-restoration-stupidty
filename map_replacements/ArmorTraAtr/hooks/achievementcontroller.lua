Hooks:PostHook(ElementBLCustomAchievement, "init", "init_toncont_package", function (self)
CustomAchievementPackage:init("toncont_package")
end)

local function CheckUnlocked(ach_id, package_id)
            local config = CustomAchievementPackage:GetConfigOf(ach_id)

            if type(config) == "table" then
                local achievement = CustomAchievement:new(config, package_id)

                if achievement:IsUnlocked() then
                    return true
                end
            end
        end



Hooks:PostHook(ElementDangerZone, "on_executed", "init_TonCont_achievements", function (self)
        if CheckUnlocked("TonCont_criminalmastermind", "toncont_package") == true then
          --  local element = managers.mission:get_mission_element_by_name("enable_unlock_kills")
           -- element:on_executed()
        end
end)