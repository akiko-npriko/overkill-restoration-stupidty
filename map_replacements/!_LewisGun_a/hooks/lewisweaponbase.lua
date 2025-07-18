LewisGunWeaponBase = LewisGunWeaponBase or class(NewRaycastWeaponBase)

function LewisGunWeaponBase:clbk_assembly_complete(...)
	LewisGunWeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_lewis_mag_ext") then
		self:weapon_tweak_data().animations.reload_name_id = "lewis_ext"
		self:weapon_tweak_data().timers.reload_empty = 5.1
		self:weapon_tweak_data().timers.reload_not_empty = 4.1
	end
end