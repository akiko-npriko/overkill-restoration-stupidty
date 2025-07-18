SSGWeaponBase = SSGWeaponBase or class(SaigaShotgun)

function SSGWeaponBase:clbk_assembly_complete(...)
	SSGWeaponBase.super.clbk_assembly_complete(self, ...)

	if table.contains(self._blueprint, "wpn_fps_upg_super_barrel_classic") then
		self:weapon_tweak_data().animations.reload_name_id = "superclassic"
		self:weapon_tweak_data().use_stance = "superclassic"
		self:weapon_tweak_data().weapon_hold = "superclassic"
		self:weapon_tweak_data().sounds.fire = "superclassic_fire"
		self:weapon_tweak_data().muzzleflash = "effects/mods/weapons/ssg/muzzle"
	end

	if table.contains(self._blueprint, "wpn_fps_upg_super_barrel_doom4") then
		self:weapon_tweak_data().animations.reload_name_id = "super_doom4"
	end
end