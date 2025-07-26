Hooks:PostHook(PlayerStandard, "exit", "INTerurupt", function(self, t, input, complete)
	managers.custom_safehouse:disable_in_game_menu()
end)

-- Hooks:PostHook(PlayerStandard, "update", "IJIFJAI", function(self, t, dt)
-- 	if self._unit then
-- 		if self._unit:base()._suspicion_settings.multipliers["equipment"] then
-- 			log("SusMult: " .. tostring(self._unit:base()._suspicion_settings.multipliers["equipment"]))
-- 		end
-- 		if self._unit:base()._detection_settings.multipliers["equipment"] then
-- 			log("DetMult: " .. tostring(self._unit:base()._detection_settings.multipliers["equipment"]))
-- 		end
-- 	end
-- end)