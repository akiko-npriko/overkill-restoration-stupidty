Hooks:PostHook(MissionEndState, "chk_complete_heist_achievements", "AR_weapon_achievement", function(self)
    local overkill_and_above = {
        "overkill_145",
        "easy_wish",
        "overkill_290",
        "sm_wish"
    }
    if self._success and table.contains(overkill_and_above, Global.game_settings.difficulty) then
        if not managers.statistics:is_dropin() and not game_state_machine:current_state_name() ~= "ingame_waiting_for_players" then
            local primary = managers.blackmarket:equipped_primary()
            local secondary = managers.blackmarket:equipped_secondary()
            
            if primary.weapon_id == "scar" and secondary.weapon_id == "glock_17" then
                local package = CustomAchievementPackage:new("ArmsRace")
                local achievement = package:Achievement("AR_Achieve_Weapons")
                achievement:Unlock()
            end
        end
    end
end)