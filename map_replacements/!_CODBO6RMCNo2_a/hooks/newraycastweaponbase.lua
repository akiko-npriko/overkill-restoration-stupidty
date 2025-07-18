local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "rmary2" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_ass_rmary2_magazine then 
		weapon_tweak_data.animations.reload_name_id = "rmary2" end
	
	if self._parts.wpn_fps_ass_rmary2_magazine_fast1 then 
		weapon_tweak_data.animations.reload_name_id = "rmary2_jungle" end
		
	if self._parts.wpn_fps_ass_rmary2_magazine_fast2 then 
		weapon_tweak_data.animations.reload_name_id = "rmary2_jungle" end
		
	if self._parts.wpn_fps_ass_rmary2_xmag1 then 
		weapon_tweak_data.animations.reload_name_id = "rmary2_jungle" end
		
	if self._parts.wpn_fps_ass_rmary2_xmag2 then 
		weapon_tweak_data.animations.reload_name_id = "rmary2_drum" end

    return weapon_tweak_data
end