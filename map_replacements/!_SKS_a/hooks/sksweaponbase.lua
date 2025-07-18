SKSWeaponBase = SKSWeaponBase or class(NewRaycastWeaponBase)

function SKSWeaponBase:clbk_assembly_complete(...)
	SKSWeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_sks_mag_detach10") or table.contains(self._blueprint, "wpn_fps_upg_sks_mag_detach20") then
		self:weapon_tweak_data().animations.reload_name_id = "sks_mag"
		self:weapon_tweak_data().timers.reload_empty = 3.4
		self:weapon_tweak_data().timers.reload_not_empty = 1.9
	end
end