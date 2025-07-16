Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Ellie_Init", function(self)
--FY-JS
if self.wpn_fps_snp_fyjs then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_fyjs", "wpn_fps_snp_msr")
	self:cafcw_add_custom_ammo("wpn_fps_snp_fyjs", "_762x54mmr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_fyjs")
end
--ARX-160
if self.wpn_fps_ass_ar160 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_ar160", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_ar160", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_ar160", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_ar160", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_ar160", "wpn_fps_ass_amcar")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_ar160")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_ar160")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_ar160")
end
end)