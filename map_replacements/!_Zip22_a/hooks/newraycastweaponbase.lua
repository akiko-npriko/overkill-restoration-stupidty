local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "zip22" then
        return weapon_tweak_data 
    end
	

	if self._parts.wpn_fps_pis_zip22_magazine then 
		weapon_tweak_data.animations.reload_name_id = "zip22" end
		
	if self._parts.wpn_fps_pis_zip22_magazine_drum_110 then 
		weapon_tweak_data.animations.reload_name_id = "zip22_drum" end
		
	if self._parts.wpn_fps_pis_zip22_magazine_drum then 
		weapon_tweak_data.animations.reload_name_id = "zip22_drum" end
				

    return weapon_tweak_data
end