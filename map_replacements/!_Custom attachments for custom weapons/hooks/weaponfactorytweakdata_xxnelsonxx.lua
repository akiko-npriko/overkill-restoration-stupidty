Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_XxNelsonxX_Init", function(self)
if self.wpn_fps_ass_m4_beowulf then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_m4_beowulf", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_m4_beowulf", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_m4_beowulf", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_m4_beowulf", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_m4_beowulf")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_m4_beowulf")
end
end)