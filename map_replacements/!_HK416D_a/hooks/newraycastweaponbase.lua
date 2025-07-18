local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "m416d" then
        return weapon_tweak_data 
    end
	

	if self._parts.wpn_fps_ass_m416d_vg_no
	then 
		weapon_tweak_data.animations.reload_name_id = "m416d"
		weapon_tweak_data.weapon_hold = "m416d"
		
		
	else
		weapon_tweak_data.animations.reload_name_id = "m416d_vg" 
		weapon_tweak_data.weapon_hold = "m416d_vg"
	end


    return weapon_tweak_data
end