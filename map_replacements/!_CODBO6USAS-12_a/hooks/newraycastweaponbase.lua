local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "uncle12" then
        return weapon_tweak_data 
    end
	
	if self._parts.wpn_fps_shot_uncle12_magazine then 
		weapon_tweak_data.animations.reload_name_id = "uncle12" end
	
	if self._parts.wpn_fps_shot_uncle12_magazine_fast1 then 
		weapon_tweak_data.animations.reload_name_id = "uncle12_fast1" end
		
	if self._parts.wpn_fps_shot_uncle12_magazine_fast2 then 
		weapon_tweak_data.animations.reload_name_id = "uncle12_fast2" end
		
	if self._parts.wpn_fps_shot_uncle12_xmag1 then 
		weapon_tweak_data.animations.reload_name_id = "uncle12_ext1" end
		
	if self._parts.wpn_fps_shot_uncle12_xmag2 then 
		weapon_tweak_data.animations.reload_name_id = "uncle12_drum" end

    return weapon_tweak_data
end