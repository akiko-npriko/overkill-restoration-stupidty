function NewRaycastWeaponBase:shotgun_shell_data()
    if self._use_shotgun_reload then
        local reload_shell_data = self:weapon_tweak_data().animations.reload_shell_data
        local unit_name = reload_shell_data and reload_shell_data.unit_name or "units/payday2/weapons/wpn_fps_shell/wpn_fps_shell" or "units/mods/weapons/wpn_fps_shell/wpn_fps_shell_dp12"
        local align = reload_shell_data and reload_shell_data.align or nil

        return {
            unit_name = unit_name,
            align = align
        }
    end

    return nil
end