Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_hyakulegger_Init", function(self)
-- M4 SOPMOD II
if self.wpn_fps_ass_soppo then
	self:cafcw_add_custom_ammo("wpn_fps_ass_soppo", "_556x45mm")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_soppo", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_soppo", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_soppo", "wpn_fps_ass_m4")
	
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_soppo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_soppo")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_soppo")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_soppo")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_soppo")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_soppo")
end
end)