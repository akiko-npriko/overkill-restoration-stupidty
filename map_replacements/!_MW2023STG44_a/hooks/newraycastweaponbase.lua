local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "stango44" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_ass_stango44_magazine then 
		weapon_tweak_data.animations.reload_name_id = "stango44" end
	
	if self._parts.wpn_fps_ass_stango44_magazine_40 then 
		weapon_tweak_data.animations.reload_name_id = "stango44" end
		
	if self._parts.wpn_fps_ass_stango44_magazine_drum then 
		weapon_tweak_data.animations.reload_name_id = "stango44_drum" end

    return weapon_tweak_data
end