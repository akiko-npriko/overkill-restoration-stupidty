local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "vecho" then
        return weapon_tweak_data 
    end
	

	if self._parts.wpn_fps_shot_vecho_drum 	
	then 
		weapon_tweak_data.animations.reload_name_id = "vecho_drum"
		weapon_tweak_data.weapon_hold = "vecho_drum"
		
		
	else
		weapon_tweak_data.animations.reload_name_id = "vecho_stick" 
		weapon_tweak_data.weapon_hold = "saiga"
	end


    return weapon_tweak_data
end