local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "t9british" then
        return weapon_tweak_data 
    end
	

	if self._parts.wpn_fps_ass_t9british_magazine or self._parts.wpn_fps_ass_t9british_magazine_mix_01 or self._parts.wpn_fps_ass_t9british_magazine_mix_02 then 
		weapon_tweak_data.animations.reload_name_id = "t9british"
	end
	
	if self._parts.wpn_fps_ass_t9british_xmag_01 or self._parts.wpn_fps_ass_t9british_xmag_02 then 
		weapon_tweak_data.animations.reload_name_id = "t9britishext"
	end
	
	if self._parts.wpn_fps_ass_t9british_magazine_fast_01 or self._parts.wpn_fps_ass_t9british_magazine_fast_02 then 
		weapon_tweak_data.animations.reload_name_id = "t9britishdouble"
	end


    return weapon_tweak_data
end