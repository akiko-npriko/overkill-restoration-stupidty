function PlayerStandard:_start_action_reload_enter(t)
	if self._equipped_unit:base():can_reload() then
		local weapon = self._equipped_unit:base()
		local tweak_data = weapon:weapon_tweak_data()
		managers.player:send_message_now(Message.OnPlayerReload, nil, self._equipped_unit)
		self:_interupt_action_steelsight(t)
		if not self.RUN_AND_RELOAD then
			self:_interupt_action_running(t)
		end
		if self._equipped_unit:base():reload_enter_expire_t() and not tweak_data.animations.reload_shell_by_shell then
			local speed_multiplier = self._equipped_unit:base():reload_speed_multiplier()
			self._ext_camera:play_redirect(Idstring("reload_enter_" .. self._equipped_unit:base().name_id), speed_multiplier)
			self._state_data.reload_enter_expire_t = t + self._equipped_unit:base():reload_enter_expire_t() / speed_multiplier
			self._equipped_unit:base():tweak_data_anim_play("reload_enter", speed_multiplier)
			return
		elseif self._equipped_unit:base():reload_enter_expire_t() and tweak_data.animations.reload_shell_by_shell == true then
			local speed_multiplier = self._equipped_unit:base():reload_speed_multiplier()
			self._ext_camera:play_redirect(Idstring("reload_enter_" .. weapon:weapon_tweak_data().animations.reload_name_id), speed_multiplier)
			self._state_data.reload_enter_expire_t = t + self._equipped_unit:base():reload_enter_expire_t() / speed_multiplier
			self._equipped_unit:base():tweak_data_anim_play("reload_enter", speed_multiplier)
			return
		end
		self:_start_action_reload(t)
	end
end