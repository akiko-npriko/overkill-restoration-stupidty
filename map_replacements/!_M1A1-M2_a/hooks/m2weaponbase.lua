M2WeaponBase = M2WeaponBase or class(NewRaycastWeaponBase)

function M2WeaponBase:clbk_assembly_complete(...)
	M2WeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_m2_stock_m1a1") or table.contains(self._blueprint, "wpn_fps_upg_m2_stock_m1a1ammopounches") then
		self:weapon_tweak_data().weapon_hold = "m1a1"
		self:weapon_tweak_data().animations.reload_name_id = "m1a1"
	end
end