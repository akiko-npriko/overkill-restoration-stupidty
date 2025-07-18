Hooks:PreHook(RaycastWeaponBase, "on_reload", "HD2DiscardMagOnReload", function (self)
    if not self:weapon_tweak_data().discard_ammo_from_clip then
        return
    end

    local ammo_base = self:ammo_base()
    local ammo_in_clip = ammo_base:get_ammo_remaining_in_clip()

    if ammo_in_clip > 0 then
        ammo_base:set_ammo_total(ammo_base:get_ammo_total() - ammo_in_clip)
    end
end)