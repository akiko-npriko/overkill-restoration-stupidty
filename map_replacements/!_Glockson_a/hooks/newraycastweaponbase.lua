local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "glockson" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_smg_glockson_mag then 
		weapon_tweak_data.animations.reload_name_id = "glockson" end
		
	if self._parts.wpn_fps_smg_glockson_tapedmag then 
		weapon_tweak_data.animations.reload_name_id = "glockson" end
	
	if self._parts.wpn_fps_smg_glockson_cmag then 
		weapon_tweak_data.animations.reload_name_id = "glockson_cmag" end

    return weapon_tweak_data
end