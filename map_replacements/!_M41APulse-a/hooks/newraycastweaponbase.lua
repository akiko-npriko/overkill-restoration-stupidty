Hooks:PostHook(NewRaycastWeaponBase, "set_ammo_remaining_in_clip", "XenoDisplayAmmoCountInit", function(self)
	if not self._assembly_complete then
		return
	end

	if self._scopes and self._parts then
		local part = nil
		for i, part_id in ipairs(self._scopes) do
			local mag_count = self:get_ammo_remaining_in_clip()
			part = self._parts[part_id]
			if part and part.unit:XenoDisplayAmmoCount() then
				part.unit:XenoDisplayAmmoCount():number_set(mag_count)
			end
			if part and part.unit:XenoDisplayAmmoCount2() then
				part.unit:XenoDisplayAmmoCount2():number_set(mag_count)
			end
		end
	end
end)