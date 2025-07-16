Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Leon_Init", function(self)
if self.wpn_fps_sho_usas12 then
	self:cafcw_add_custom_ammo("wpn_fps_sho_usas12", "_12ga_auto")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_sho_usas12", "wpn_fps_sho_aa12", "wpn_fps_sho_usas12_body_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_sho_usas12", "wpn_fps_sho_aa12", "wpn_fps_sho_usas12_body_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_sho_usas12", "wpn_fps_sho_aa12", "wpn_fps_sho_usas12_body_rail")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_sho_usas12")
end
if self.wpn_fps_shot_prison then
	self:cafcw_add_custom_ammo("wpn_fps_shot_prison", "_12ga_auto")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_prison", "wpn_fps_sho_spas12", "wpn_fps_shot_r870_ris_special")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_prison", "wpn_fps_sho_spas12", "wpn_fps_shot_r870_ris_special")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_prison", "wpn_fps_sho_spas12", "wpn_fps_shot_r870_ris_special")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_prison")
end
-- K22 (I love Leon and guess who wrote this)
if self.wpn_fps_ass_munmu then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_munmu", "wpn_fps_ass_ak5")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_munmu", "wpn_fps_ass_ak5")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_munmu", "wpn_fps_ass_ak5")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_munmu")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_munmu")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_munmu")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_munmu")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_munmu")
	self:cafcw_add_custom_ammo("wpn_fps_ass_munmu", "_556x45mm")
end
-- GITS M4A1 (she moved from my list to my boyfriend's, yup)
if self.wpn_fps_ass_cinnamonroll then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_cinnamonroll", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_cinnamonroll", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_cinnamonroll", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_cinnamonroll")
	self:cafcw_add_custom_ammo("wpn_fps_ass_cinnamonroll", "_556x45mm")
end
-- Troglodyte (I hate this thing, but I love Leon)
if self.wpn_fps_snp_troglodyte then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_troglodyte", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_troglodyte", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_troglodyte", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_troglodyte", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_troglodyte", "wpn_fps_snp_msr")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_snp_troglodyte_thing", "a_o_troglodyte")
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_snp_troglodyte_thing", "a_o_troglodyte")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_snp_troglodyte_thing", "a_o_troglodyte")
	self:cafcw_part_a_obj_pattern_override("Custom_Sniper", "wpn_fps_snp_troglodyte_thing", "a_o_troglodyte")
	self:cafcw_part_a_obj_pattern_override("Shortdot", "wpn_fps_snp_troglodyte_thing", "a_o_troglodyte")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_troglodyte")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_snp_troglodyte_thing", "a_fl_troglodyte")
end
-- BOSG 12.2
if self.wpn_fps_shot_dokkasho then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_dokkasho", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_dokkasho", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_dokkasho", "wpn_fps_ass_amcar")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_dokkasho")
	self:cafcw_add_custom_ammo("wpn_fps_shot_dokkasho", "_12ga_mag")
end
-- Saritch .308 (what an ugly gun, what a best hubby)
if self.wpn_fps_ass_spear308 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_spear308", "wpn_fps_ass_vhs")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_spear308", "wpn_fps_ass_vhs")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_spear308", "wpn_fps_ass_vhs")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_spear308")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_spear308")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_spear308")
	self:cafcw_add_custom_ammo("wpn_fps_ass_spear308", "_762x51mm")
end
-- FightLite Raider (modern flintlock)
if self.wpn_fps_pis_raider then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_raider", "wpn_fps_smg_olympic")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_raider", "wpn_fps_smg_olympic")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_raider", "wpn_fps_smg_olympic")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_pis_raider", "wpn_fps_smg_olympic")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_pis_raider")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_pis_raider")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pis_raider")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_pis_raider")
	self:cafcw_add_custom_ammo("wpn_fps_pis_raider", "_556x45mm")
end
-- DVL-10 (WHERE IS MY DEADPOOL SKIN)
if self.wpn_fps_snp_dvl10 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_dvl10", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_dvl10", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_dvl10", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_dvl10", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_dvl10", "wpn_fps_snp_msr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_dvl10")
	self:cafcw_add_custom_ammo("wpn_fps_snp_dvl10", "_762x51mm")
end
-- Triton
if self.wpn_fps_ass_hometown then
	self:cafcw_add_custom_ammo("wpn_fps_ass_hometown", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_hometown", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_hometown", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_hometown", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_ass_hometown", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_hometown")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_hometown")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_hometown")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_hometown")
end
end)