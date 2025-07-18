local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "geasy9" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_smg_geasy9_magazine then 
		weapon_tweak_data.animations.reload_name_id = "geasy9" end
	
	if self._parts.wpn_fps_smg_geasy9_magazine_short then 
		weapon_tweak_data.animations.reload_name_id = "geasy9_short" end
		
	if self._parts.wpn_fps_smg_geasy9_xmag2 then 
		weapon_tweak_data.animations.reload_name_id = "geasy9_drum" end
		
	if self._parts.wpn_fps_smg_geasy9_xmag1 then 
		weapon_tweak_data.animations.reload_name_id = "geasy9_xmag1" end
		
	if self._parts.wpn_fps_smg_geasy9_magazine_fast then 
		weapon_tweak_data.animations.reload_name_id = "geasy9_fast" end

    return weapon_tweak_data
end