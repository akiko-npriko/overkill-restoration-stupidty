M1A1WeaponBase = M1A1WeaponBase or class(NewRaycastWeaponBase)

function M1A1WeaponBase:clbk_assembly_complete(...)
	M1A1WeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_m1a1_stock_m2") or table.contains(self._blueprint, "wpn_fps_upg_m1a1_stock_m2ammopounches") or table.contains(self._blueprint, "wpn_fps_upg_m1a1_stock_m2cheekrest") then
		self:weapon_tweak_data().weapon_hold = "m2"
		self:weapon_tweak_data().animations.reload_name_id = "m2"
	end
end