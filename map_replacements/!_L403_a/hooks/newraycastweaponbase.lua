local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "l403a1" then
        return weapon_tweak_data 
    end
	

	if self._parts.wpn_fps_ass_l403a1_vg_rsb
	
	then 
		weapon_tweak_data.animations.reload_name_id = "l403a1_vg"
		weapon_tweak_data.weapon_hold = "l403a1_vg"
		
		
	else
		weapon_tweak_data.animations.reload_name_id = "l403a1" 
		weapon_tweak_data.weapon_hold = "l403a1"
	end


    return weapon_tweak_data
end