Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_kden_Init", function(self)
--CZ BREN 2
if self.wpn_fps_ass_bren2 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_bren2", "_556x45mm")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_bren2", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_bren2", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_bren2", "wpn_fps_ass_m4")

    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_bren2")
    self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_bren2")	
    self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_bren2")		
end
--RSASS
if self.wpn_fps_ass_rsass then
	self:cafcw_add_custom_ammo("wpn_fps_ass_rsass", "_762x51mm")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_rsass", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_rsass", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_rsass", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_ass_rsass", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_ass_rsass", "wpn_fps_snp_tti")	

    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_rsass")
    self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_rsass")	
    self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_rsass")	
    self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_rsass")		
    self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_rsass")	
end
end)