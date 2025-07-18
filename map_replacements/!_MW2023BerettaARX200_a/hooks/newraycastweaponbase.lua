local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "soa" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_ass_soa_m_1 then 
		weapon_tweak_data.animations.reload_name_id = "soa" end
	
	if self._parts.wpn_fps_ass_soa_m_2 then 
		weapon_tweak_data.animations.reload_name_id = "soa" end
		
	if self._parts.wpn_fps_ass_soa_m_3 then 
		weapon_tweak_data.animations.reload_name_id = "soa_drum" end

    return weapon_tweak_data
end