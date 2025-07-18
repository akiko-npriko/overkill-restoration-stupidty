PPShWeaponBase = PPShWeaponBase or class(NewRaycastWeaponBase)

function PPShWeaponBase:clbk_assembly_complete(...)
	PPShWeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_ppsh_stock_k50m") then
		self:weapon_tweak_data().weapon_hold = "k50m"
		self:weapon_tweak_data().animations.reload_name_id = "k50m"
	end
end