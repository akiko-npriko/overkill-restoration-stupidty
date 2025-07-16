local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
    local weapon_tweak_data = old_weapon_tweak_data(self, ...)

    if not self._parts or self._name_id ~= "m16" then
        return weapon_tweak_data 
    end

    if self._parts.wpn_fps_upg_m16_benelli_ub then
        weapon_tweak_data.weapon_hold = "contraband"
        weapon_tweak_data.animations.reload_name_id = "contraband"
    end

    return weapon_tweak_data
end