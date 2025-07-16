Hooks:PostHook(PlayerStandard, "_start_action_reload", "goldeneye_reload_start_action_reload", function(self, t, ...)
    local weapon = self._equipped_unit:base()
    if weapon and weapon:can_reload() then
        self:_stance_entered()
    end
end)


Hooks:PreHook(PlayerStandard, "_update_reload_timers", "goldeneye_reload_update_reload_timers", function(self, t, dt, input, ...)
    if self._state_data.reload_expire_t then
        local interupt = nil

		if self._equipped_unit:base():update_reloading(t, dt, self._state_data.reload_expire_t - t) then
			managers.hud:set_ammo_amount(self._equipped_unit:base():selection_index(), self._equipped_unit:base():ammo_info())

			if self._queue_reload_interupt then
				self._queue_reload_interupt = nil
				interupt = true
			end
		end

        if self._state_data.reload_expire_t <= t or interupt then
            -- log("self._state_data.reload_expire_t"..tostring(self._state_data.reload_expire_t))
            DelayedCalls:Add("_update_reload_timers_force_stance", 0.1, function()
                self:_stance_entered()
            end)
        end
    end
end)