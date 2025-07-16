Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Matt_Init", function(self)
-- Akimbo UMP
if self.wpn_fps_smg_x_ump then
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_ump")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_ump")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_ump")
end
-- UMP
if self.wpn_fps_smg_ump then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_ump", "wpn_fps_smg_mp5")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_ump", "wpn_fps_smg_mp5")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_ump", "wpn_fps_smg_mp5")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_ump")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_ump")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_ump")
end
-- Montana 5.56
if self.wpn_fps_ass_yayo then
	self:cafcw_add_custom_ammo("wpn_fps_ass_yayo", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_yayo", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_yayo", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_yayo", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_yayo", "wpn_fps_ass_contraband")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_yayo")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_yayo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_yayo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_yayo")
end
end)