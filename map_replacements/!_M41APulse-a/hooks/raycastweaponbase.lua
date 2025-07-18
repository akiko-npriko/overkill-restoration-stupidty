function RaycastWeaponBase:get_stance_id()
	if self:weapon_tweak_data().use_get_name_id then
		last_wpn_used_get_name_id = true
		return self:get_name_id()
	else
		if last_wpn_used_get_name_id then
			return self:get_name_id()
		else
			last_wpn_used_get_name_id = nil
			return self:weapon_tweak_data().use_stance or self:get_name_id()
		end
	end
end