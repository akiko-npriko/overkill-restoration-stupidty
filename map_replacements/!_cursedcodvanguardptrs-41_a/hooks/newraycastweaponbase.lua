local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "mptango41" then
        return weapon_tweak_data
    end
	
	if self._parts.wpn_fps_snp_mptango41_magazine then 
		weapon_tweak_data.animations.reload_name_id = "mptango41" end
	
	if self._parts.wpn_fps_snp_mptango41_magazine_extended then 
		weapon_tweak_data.animations.reload_name_id = "mptango41_extended_mag" end
		
	if self._parts.wpn_fps_snp_mptango41_magazine_extended_large then 
		weapon_tweak_data.animations.reload_name_id = "mptango41_extended_large_mag" end
	
	if self._parts.wpn_fps_snp_mptango41_magazine_fast then 
		weapon_tweak_data.animations.reload_name_id = "mptango41_fast_mag" end

    return weapon_tweak_data
end