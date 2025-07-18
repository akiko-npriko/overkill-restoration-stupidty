Hooks:PostHook(PlayerStandard, "get_weapon_hold_str", "XenoModInit", function(self)
	local weapon = self._ext_inventory:equipped_unit()

	if weapon then
		local base_ext = weapon:base()

		if base_ext.use_get_name_id == true then
			local cur_state = self:current_anim_state_name()
			local ignore_states = nil
			hold_str = base_ext:get_name_id()

			if cur_state ~= "standard" and (not ignore_states or ignore_states[cur_state] ~= false) then
				hold_str = hold_str .. "_" .. cur_state
			end

			return hold_str
		end
	end
end)