Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_DataZero_Init", function(self)
-- AutoMag .44 (AMT)
if self.wpn_fps_pis_amt then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_amt", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_amt", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_amt", "wpn_fps_pis_deagle")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_pis_rage_o_adapter", "a_quite")
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_pis_rage_o_adapter", "a_quite")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_pis_rage_o_adapter", "a_quite")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_pis_amt")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pis_amt")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_amt")
end
end)