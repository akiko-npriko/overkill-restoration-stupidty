local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "r31" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_smg_r31_m_std then 
		weapon_tweak_data.animations.reload_name_id = "grendel" end
	
	if self._parts.wpn_fps_smg_r31_m_extclip then 
		weapon_tweak_data.animations.reload_name_id = "grendel_ext01" end
		
	if self._parts.wpn_fps_smg_r31_m_extclip2 then 
		weapon_tweak_data.animations.reload_name_id = "grendel_ext02" end
		
	if self._parts.wpn_fps_smg_r31_m_fastreload then 
		weapon_tweak_data.animations.reload_name_id = "grendel_ext01" end
		
	if self._parts.wpn_fps_smg_r31_m_fastreload2 then 
		weapon_tweak_data.animations.reload_name_id = "grendel_fast02" end

    return weapon_tweak_data
end