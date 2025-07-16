Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Mira_Init", function(self)
-- SAI GRYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
if self.wpn_fps_ass_saigry then
	self:cafcw_add_custom_ammo("wpn_fps_ass_saigry", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_saigry", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_saigry", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_saigry", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_saigry")
end
-- MSBS-5.56B
if self.wpn_fps_ass_grotb then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_grotb", "wpn_fps_ass_aug", "wpn_fps_ass_grotb_o_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_grotb", "wpn_fps_ass_aug", "wpn_fps_ass_grotb_o_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_grotb", "wpn_fps_ass_aug", "wpn_fps_ass_grotb_o_folded")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_ass_grotb", "wpn_fps_ass_aug")
	self:cafcw_wpn_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_ass_grotb", nil, "upper_reciever")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_grotb")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_grotb")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_grotb")
	self:cafcw_wpn_a_obj_pattern_override("Gadgets", "wpn_fps_ass_grotb", nil, "foregrip")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_grotb")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_grotb")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_grotb")
	self:cafcw_add_custom_ammo("wpn_fps_ass_grotb", "_556x45mm")
end
-- HK33
if self.wpn_fps_ass_hk33 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_hk33", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_hk33", "wpn_fps_ass_hk33", "wpn_fps_ass_hk33_body_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_hk33", "wpn_fps_ass_hk33", "wpn_fps_ass_hk33_body_rail")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_hk33")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_hk33")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_hk33")
end
-- STF-12 Compact
if self.wpn_fps_shot_stf12 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_stf12")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_stf12")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_stf12")
	self:cafcw_add_custom_ammo("wpn_fps_shot_stf12", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_stf12", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_stf12", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_stf12", "wpn_fps_shot_r870")
end
-- MP7
if self.wpn_fps_smg_mp7new then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_mp7new", "wpn_fps_smg_mp7")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_mp7new", "wpn_fps_smg_mp7")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_mp7new", "wpn_fps_smg_mp7")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_mp7new")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_mp7new")
end
-- SMG-11
if self.wpn_fps_smg_mac10mpa then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_mac10mpa", "wpn_fps_smg_mac10mpa")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_mac10mpa", "wpn_fps_smg_mac10mpa")
end
-- Wesker's 92FS "Samurai Edge"
if self.wpn_fps_pis_wes92se then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_wes92se")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_wes92se")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_wes92se", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_wes92se", "a_ns", "barrel")
	self:cafcw_part_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_wes92se_compensator", "a_ns_ext")
	self:cafcw_part_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_wes92se_compensator", "a_ns_ext")
	self:cafcw_add_custom_ammo("wpn_fps_pis_wes92se", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_wes92se", "_9x19mm_p")
end
-- TTI TR-1
if self.wpn_fps_ass_hugsforleon then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_hugsforleon", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_hugsforleon", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_hugsforleon", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_ass_hugsforleon", "wpn_fps_ass_hugsforleon")
	self:cafcw_add_custom_ammo("wpn_fps_ass_hugsforleon", "_556x45mm")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_hugsforleon")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_hugsforleon")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_hugsforleon")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_hugsforleon")
	self:cafcw_add_attachment_type("Vertical_Grips", "wpn_fps_ass_hugsforleon")
end
-- DT MDR-C
if self.wpn_fps_ass_shieldgirl then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_shieldgirl", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_shieldgirl", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_shieldgirl", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_ammo("wpn_fps_ass_shieldgirl", "_556x45mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_shieldgirl")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_shieldgirl")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_shieldgirl")
end
-- ACR PDW
if self.wpn_fps_ass_op68 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_op68", "wpn_fps_ass_m4", "wpn_fps_ass_op68_ironsights_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_op68", "wpn_fps_ass_m4", "wpn_fps_ass_op68_ironsights_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_op68", "wpn_fps_ass_m4", "wpn_fps_ass_op68_ironsights_folded")
	self:cafcw_add_custom_ammo("wpn_fps_ass_op68", "_556x45mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_op68")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_op68")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_op68")
end
-- Mk 14 EBR
if self.wpn_fps_snp_wargoddess then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_wargoddess")
	self:cafcw_add_custom_ammo("wpn_fps_snp_wargoddess", "_762x51mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_wargoddess", "wpn_fps_ass_m14")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_wargoddess", "wpn_fps_ass_m14")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_wargoddess", "wpn_fps_ass_m14")
end
-- TAR-21
if self.wpn_fps_ass_tar21 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_tar21", "wpn_fps_ass_vhs", "wpn_fps_ass_tar21_irons_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_tar21", "wpn_fps_ass_vhs", "wpn_fps_ass_tar21_irons_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_tar21", "wpn_fps_ass_vhs", "wpn_fps_ass_tar21_irons_folded")
	self:cafcw_add_custom_ammo("wpn_fps_ass_tar21", "_556x45mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_tar21")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_tar21")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_tar21")
end
-- QBZ-97B (it took some time to finally add support, yup)
if self.wpn_fps_ass_qbz97b then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_qbz97b", "wpn_fps_ass_famas", "wpn_fps_ass_qbz97b_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_qbz97b", "wpn_fps_ass_famas", "wpn_fps_ass_qbz97b_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_qbz97b", "wpn_fps_ass_famas", "wpn_fps_ass_qbz97b_rail")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_ass_qbz97b_95b_body", "a_o_95b")
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_ass_qbz97b_95b_body", "a_o_95b")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_ass_qbz97b_95b_body", "a_o_95b")
	self:cafcw_add_custom_ammo("wpn_fps_ass_qbz97b", "_556x45mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_qbz97b")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_qbz97b")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_qbz97b")
end
-- DSR-1
if self.wpn_fps_snp_bigbust then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_bigbust", "wpn_fps_snp_desertfox")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_bigbust", "wpn_fps_snp_desertfox")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_bigbust", "wpn_fps_snp_desertfox")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_bigbust", "wpn_fps_snp_desertfox")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_bigbust", "wpn_fps_snp_desertfox")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_bigbust")
	self:cafcw_forbids_attachment_type("Gadgets", "wpn_fps_snp_bigbust_bipod_unfolded")
end
-- HK VP70M
if self.wpn_fps_pis_vp70 then
	self:cafcw_add_custom_ammo("wpn_fps_pis_vp70", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_vp70_ac_9x21imi", "_9x19mm", "forbids_add")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_vp70")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_vp70")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_vp70", "a_ns")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_vp70", "a_ns")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_vp70", "wpn_fps_pis_ppk")
	self:cafcw_clone_override("attach_table", "wpn_fps_pis_vp70", "wpn_fps_pis_vp70", "wpn_fps_upg_o_rmr", "Custom_Pistol")
	self:cafcw_clone_override("attach_table", "wpn_fps_pis_vp70_s_scifi", "wpn_fps_pis_vp70_s_scifi", "wpn_fps_upg_o_rmr", "Custom_Pistol")

end
if self.wpn_fps_pis_x_vp70 then
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_vp70", "_9x19mm")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_vp70")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_vp70")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_x_vp70", "a_ns")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_x_vp70", "a_ns")
end
-- CZ 75 TS Czechmate
if self.wpn_fps_pis_axewscope then
	self:cafcw_add_custom_ammo("wpn_fps_pis_axewscope", "_9x19mm")
end
-- FNP-45
if self.wpn_fps_pis_fnp45 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_fnp45")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_fnp45")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_fnp45", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_fnp45", "a_ns", "barrel")
end
-- T-5000
if self.wpn_fps_snp_t1000x5 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_t1000x5", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_t1000x5", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_t1000x5", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_t1000x5", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_t1000x5", "wpn_fps_snp_msr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_t1000x5")
	self:cafcw_add_custom_ammo("wpn_fps_snp_t1000x5", "_762x51mm")
end
-- Fang-45
if self.wpn_fps_smg_fang45 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_fang45", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_fang45", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_fang45", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_fang45")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_fang45")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_fang45")
end
-- AS Val MOD.3 
if self.wpn_fps_ass_nightgoddess then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_nightgoddess", "wpn_fps_smg_akmsu", "wpn_fps_ass_nightgoddess_sights_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_nightgoddess", "wpn_fps_smg_akmsu", "wpn_fps_ass_nightgoddess_sights_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_nightgoddess", "wpn_fps_smg_akmsu", "wpn_fps_ass_nightgoddess_sights_folded")
	self:cafcw_add_custom_ammo("wpn_fps_ass_nightgoddess", "_9x39mm")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_nightgoddess")
end
--TKPD Storm
if self.wpn_fps_snp_tkpd then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_tkpd")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_tkpd", "wpn_fps_snp_siltstone", "wpn_fps_snp_tkpd_o_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_tkpd", "wpn_fps_snp_siltstone", "wpn_fps_snp_tkpd_o_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_tkpd", "wpn_fps_snp_siltstone", "wpn_fps_snp_tkpd_o_folded")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_tkpd", "wpn_fps_snp_tkpd", "wpn_fps_snp_tkpd_o_folded")
	self:cafcw_wpn_a_obj_pattern_override("Shortdot", "wpn_fps_snp_tkpd", "a_o_scope")
	self:cafcw_add_custom_ammo("wpn_fps_snp_tkpd", "_762x54mmr")
end
-- FP6
if self.wpn_fps_shot_fpsix then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_fpsix")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_fpsix")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_fpsix")
	self:cafcw_forbids_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_fpsix_magext")
	self:cafcw_add_custom_ammo("wpn_fps_shot_fpsix", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_fpsix", "wpn_fps_shot_r870", "wpn_fps_shot_fpsix_o_front_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_fpsix", "wpn_fps_shot_r870", "wpn_fps_shot_fpsix_o_front_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_fpsix", "wpn_fps_shot_r870", "wpn_fps_shot_fpsix_o_front_folded")
end
-- Scout Elite
if self.wpn_fps_snp_b42 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_b42", "wpn_fps_snp_model70")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_b42")
	self:cafcw_add_custom_ammo("wpn_fps_snp_b42", "_556x45mm")
end
-- Mk 18 Mod 0
if self.wpn_fps_smg_m4cqb then
	self:cafcw_add_custom_ammo("wpn_fps_smg_m4cqb", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_m4cqb", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_m4cqb", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_m4cqb", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_smg_m4cqb", "wpn_fps_ass_s552")
	self:cafcw_forbids_attachment_type("MOD_IronSightsPack_Front", "wpn_fps_smg_m4cqb_gb_m4")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_m4cqb")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_m4cqb")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_m4cqb")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_smg_m4cqb_hg_m4", "a_fl_ddm4")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_smg_m4cqb_hg_ddm4", "a_fl_ddm4")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_smg_m4cqb")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_smg_m4cqb")
	self:cafcw_add_attachment_type("Angled_Grips", "wpn_fps_smg_m4cqb")
	self:cafcw_part_a_obj_pattern_override("Angled_Grips", "wpn_fps_smg_m4cqb_hg_ddm4", "a_vg_ddm4")	
	self:cafcw_forbids_attachment_type("Angled_Grips", "wpn_fps_smg_m4cqb_hg_m4")
end
if self.parts.wpn_fps_smg_m4cqb_o_stupid then
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_smg_m4cqb_o_stupid", "a_o_stupid")	
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_smg_m4cqb_o_stupid", "a_o_stupid")	
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_smg_m4cqb_o_stupid", "a_o_stupid")
	self:cafcw_forbids_attachment_type("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_smg_m4cqb_o_stupid")
end
if self.wpn_fps_ass_mk18prim then
	self:cafcw_add_custom_ammo("wpn_fps_ass_mk18prim", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mk18prim", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mk18prim", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mk18prim", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_ass_mk18prim", "wpn_fps_ass_s552")
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_ass_mk18prim_ba_m16", "a_of_m5")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_mk18prim_ba_m16", "a_fl_m5")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mk18prim")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mk18prim")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mk18prim")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_mk18prim")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_mk18prim")
	self:cafcw_add_attachment_type("Angled_Grips", "wpn_fps_ass_mk18prim")
	self:cafcw_part_a_obj_pattern_override("Angled_Grips", "wpn_fps_smg_m4cqb_hg_ddm4", "a_vg_ddm4")	
	self:cafcw_forbids_attachment_type("Angled_Grips", "wpn_fps_smg_m4cqb_hg_m4")
	self:cafcw_forbids_attachment_type("Angled_Grips", "wpn_fps_ass_mk18prim_hg_heatshield")
end
-- HK USP
if self.wpn_fps_pis_ctfavourite then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_ctfavourite")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_ctfavourite")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_ctfavourite", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_ctfavourite", "a_ns", "barrel")
end
-- Soylent Green... Sorry, SAI GRY Remastered
if self.wpn_fps_ass_grayhound then
	self:cafcw_add_custom_ammo("wpn_fps_ass_grayhound", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_grayhound", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_grayhound", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_grayhound", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_ass_grayhound", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_grayhound")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_grayhound")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_grayhound")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_grayhound")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_grayhound")
end
-- HK G28
if self.wpn_fps_snp_apairofmelons then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_apairofmelons", "wpn_fps_snp_apairofmelons")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_apairofmelons")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_snp_apairofmelons")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_snp_apairofmelons")
	self:cafcw_add_custom_ammo("wpn_fps_snp_apairofmelons", "_762x51mm")
end
-- AI AX308
if self.wpn_fps_snp_kissesforleon then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_kissesforleon")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_kissesforleon", "wpn_fps_snp_msr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_kissesforleon")
	self:cafcw_add_custom_ammo("wpn_fps_snp_kissesforleon", "_762x51mm")
end
-- F90 body for AUG
if self.parts.wpn_fps_ass_aug_body_f90mbr then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_aug_body_f90mbr", "a_fl_f90")	
	self:cafcw_part_a_obj_pattern_override("Vertical_Grips", "wpn_fps_ass_aug_body_f90mbr", "a_vg_f90")	
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Custom", "wpn_fps_ass_aug_body_f90mbr", "a_or_f90")
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_ass_aug_body_f90mbr", "a_of_f90")
end
-- SV-98
if self.wpn_fps_snp_heartpiercer then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_heartpiercer")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_msr")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_heartpiercer", "wpn_fps_snp_msr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_heartpiercer")
	self:cafcw_add_custom_ammo("wpn_fps_snp_heartpiercer", "_762x54mmr")
end
-- Prokolot
if self.wpn_fps_pis_rusglock then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_rusglock")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_rusglock")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_rusglock", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_rusglock", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_rusglock", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_rusglock", "_9x19mm_p")
end
if self.wpn_fps_pis_pkpsd9 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_pkpsd9", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_pkpsd9", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_pkpsd9", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_ammo("wpn_fps_pis_pkpsd9", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_pkpsd9", "_9x19mm_p")
end
-- VBR PDW
if self.wpn_fps_pis_lele then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_lele")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_lele")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_lele", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_lele", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_lele", "_9x19mm")
end
-- Beretta M38A
if self.wpn_fps_smg_m38a then
	self:cafcw_add_custom_sights("Custom_WW2_Axis", "wpn_fps_smg_m38a", "wpn_fps_smg_m45", nil, "0,-2,0.4") --original specter m45 || PVM xyz 
	self:cafcw_wpn_a_obj_pattern_override("Custom_WW2_Axis", "wpn_fps_smg_m38a", "a_o_clamp") 
	
	
	self:cafcw_add_custom_ammo("wpn_fps_smg_m38a", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_m38a", "wpn_fps_smg_erma", "wpn_fps_smg_m38a_o_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_m38a", "wpn_fps_smg_erma", "wpn_fps_smg_m38a_o_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_m38a", "wpn_fps_smg_erma", "wpn_fps_smg_m38a_o_rail")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_m38a", "wpn_fps_smg_m38a")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_m38a")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_m38a")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_m38a")
end
-- LWRC SMG-45
if self.wpn_fps_smg_smg45 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_smg45", "wpn_fps_smg_schakal", "wpn_fps_smg_smg45_o_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_smg45", "wpn_fps_smg_schakal", "wpn_fps_smg_smg45_o_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_smg45", "wpn_fps_smg_schakal", "wpn_fps_smg_smg45_o_folded")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_smg45", "wpn_fps_smg_smg45")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_smg_smg45", "wpn_fps_smg_schakal")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_smg45", "wpn_fps_smg_smg45_rail")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_smg_smg45_fl_leftrail", "a_fl_left")	
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_smg_smg45_fl_toprail", "a_fl_top")	
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_smg45")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_smg45")
end
-- VPO-215 Gornostay
if self.wpn_fps_shot_paradox then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_paradox", "wpn_fps_snp_model70", "wpn_fps_shot_paradox_o_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_paradox", "wpn_fps_snp_model70", "wpn_fps_shot_paradox_o_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_paradox", "wpn_fps_snp_model70")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_shot_paradox", "wpn_fps_snp_model70", "wpn_fps_shot_paradox_o_rail")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_shot_paradox", "wpn_fps_snp_model70", "wpn_fps_shot_paradox_o_rail")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_shot_paradox", "wpn_fps_shot_paradox")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_paradox")
end
-- Beretta 92FS "Samurai Edge"
if self.wpn_fps_pis_m9butcool then
	self:cafcw_add_custom_ammo("wpn_fps_pis_m9butcool", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_m9butcool_ck_aw01", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_m9butcool_ck_40sw", "_9x19mm", "forbids_add")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_m9butcool")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_m9butcool")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_m9butcool", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_m9butcool", "a_ns", "barrel")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_m9butcool", "wpn_fps_pis_ppk")
	self:cafcw_part_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_m9butcool_ro_raised", "a_rds_raised")	
	self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_m9butcool", nil, "slide")
end
-- Smug-12
if self.wpn_fps_ass_smug12 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_smug12", "wpn_fps_ass_flint", "wpn_fps_ass_smug12_o_cosm")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_smug12", "wpn_fps_ass_flint", "wpn_fps_ass_smug12_o_cosm")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_smug12", "wpn_fps_ass_flint", "wpn_fps_ass_smug12_o_cosm")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_ass_smug12", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_smug12", "wpn_fps_ass_smug12")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_smug12", "wpn_fps_ass_smug12_rail_std")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_smug12")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_smug12")
	self:cafcw_add_custom_ammo("wpn_fps_ass_smug12", "_545x39mm")
	self:cafcw_add_custom_ammo("wpn_fps_ass_smug12", "_762x39mm")
	self:cafcw_add_custom_ammo("wpn_fps_ass_smug12_m_762x39", "_545x39mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_ass_smug12_m_ak12", "_762x39mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_ass_smug12_m_classic", "_762x39mm", "forbids_add")
end
-- L22A2
if self.wpn_fps_pdw_fckmyfingers then
	self:cafcw_add_custom_ammo("wpn_fps_pdw_fckmyfingers", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pdw_fckmyfingers", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pdw_fckmyfingers", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pdw_fckmyfingers", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_pdw_fckmyfingers", "wpn_fps_snp_tti", "wpn_fps_pdw_fckmyfingers_o_rail_pic", "0,8,1.87")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pdw_fckmyfingers")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_pdw_fckmyfingers")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_pdw_fckmyfingers")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_pdw_fckmyfingers")
	self:cafcw_add_attachment_type("Vertical_Grips", "wpn_fps_pdw_fckmyfingers")
end
if self.wpn_fps_crb_enfieldl22 then
	self:cafcw_add_custom_ammo("wpn_fps_crb_enfieldl22", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_crb_enfieldl22", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_crb_enfieldl22", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_crb_enfieldl22", "wpn_fps_ass_l85a2", "wpn_fps_pdw_fckmyfingers_o_rail_pic")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_crb_enfieldl22", "wpn_fps_snp_tti", "wpn_fps_pdw_fckmyfingers_o_rail_pic", "0,8,1.87")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_crb_enfieldl22")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_crb_enfieldl22")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_crb_enfieldl22")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_crb_enfieldl22")
	self:cafcw_add_attachment_type("Vertical_Grips", "wpn_fps_crb_enfieldl22")
end
-- AK-Alfa
if self.wpn_fps_ass_fakedefy then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fakedefy", "wpn_fps_ass_flint", "wpn_fps_ass_fakedefy_o_cosm")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fakedefy", "wpn_fps_ass_flint", "wpn_fps_ass_fakedefy_o_cosm")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_fakedefy", "wpn_fps_ass_flint", "wpn_fps_ass_fakedefy_o_cosm")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_ass_fakedefy", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_fakedefy", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_fakedefy")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_fakedefy")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_fakedefy")
	self:cafcw_add_custom_ammo("wpn_fps_ass_fakedefy", "_762x39mm")
end
-- M45 MEU(SOC)
if self.wpn_fps_pis_meusoc then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_meusoc")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_meusoc")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_meusoc", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_meusoc", "a_ns", "barrel")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_meusoc", "wpn_fps_pis_pl14", "wpn_fps_pis_meusoc_fo_novak")
	self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_meusoc", nil, "slide")
end
if self.wpn_fps_pis_x_meusoc then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_meusoc")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_meusoc")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_x_meusoc", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_x_meusoc", "a_ns", "barrel")
end
-- LSA TX-15 DML
if self.wpn_fps_ass_damsel then
	self:cafcw_add_custom_ammo("wpn_fps_ass_damsel", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_damsel", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_damsel", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_damsel", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_damsel", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_ass_damsel", "wpn_fps_snp_tti")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_damsel")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_damsel")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_damsel")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_damsel")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_damsel")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_damsel")
	self:cafcw_wpn_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_ass_damsel", nil, "handguard")
end
-- CZ 75 AccuShadow 2
if self.wpn_fps_pis_accushadow2 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_accushadow2")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_accushadow2")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_accushadow2", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_accushadow2", "a_ns", "barrel")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_accushadow2", "wpn_fps_pis_sparrow")
	self:cafcw_add_custom_ammo("wpn_fps_pis_accushadow2", "_9x19mm")
end
-- Beretta M9
if self.wpn_fps_pis_m92fs then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_m92fs")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_m92fs")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_m92fs", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_m92fs", "a_ns", "barrel")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_m92fs", "wpn_fps_pis_pl14")
	self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_m92fs", nil, "slide")
	self:cafcw_add_custom_ammo("wpn_fps_pis_m92fs", "_9x19mm")
end
if self.wpn_fps_pis_x_m92fs then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_m92fs")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_m92fs")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_x_m92fs", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_x_m92fs", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_m92fs", "_9x19mm")
end
-- Heckler and Koch HK433
if self.wpn_fps_ass_hkg14976 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_hkg14976", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_hkg14976", "wpn_fps_ass_s552", "wpn_fps_ass_hkg14976_o_folded")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_hkg14976", "wpn_fps_ass_s552", "wpn_fps_ass_hkg14976_o_folded")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_hkg14976", "wpn_fps_ass_s552", "wpn_fps_ass_hkg14976_o_folded")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_ass_hkg14976", "wpn_fps_ass_s552")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_hkg14976")
	self:cafcw_forbids_attachment_type("Barrel_Extensions", "wpn_fps_ass_hkg14976_b_supp")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_hkg14976")
	self:cafcw_forbids_attachment_type("Suppressors", "wpn_fps_ass_hkg14976_b_supp")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_hkg14976", "wpn_fps_ass_hkg14976_gadget_rail")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_hkg14976_fl_leftrail", "a_fl_left")	
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_hkg14976_fl_toprail", "a_fl_top")	
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_hkg14976_fl_botrail", "a_fl_bot")	
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_hkg14976")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_hkg14976")
	self:cafcw_add_attachment_type("Angled_Grips", "wpn_fps_ass_hkg14976")
end
-- AM D114
if self.wpn_fps_pis_bootl1911 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_bootl1911", "wpn_fps_ass_amcar", "wpn_fps_pis_bootl1911_rail_cb")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_bootl1911", "wpn_fps_ass_amcar", "wpn_fps_pis_bootl1911_rail_cb")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_bootl1911", "wpn_fps_ass_amcar", "wpn_fps_pis_bootl1911_rail_cb")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_bootl1911")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_bootl1911")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_bootl1911", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_bootl1911", "a_ns", "barrel")
end
if self.wpn_fps_pis_x_bootl1911 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_bootl1911")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_bootl1911")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_x_bootl1911", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_x_bootl1911", "a_ns", "barrel")
end
-- Colt M4A1/M203
if self.wpn_fps_ass_kurisumasu then
	self:cafcw_add_custom_ammo("wpn_fps_ass_kurisumasu", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_kurisumasu", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_kurisumasu", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_kurisumasu", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_ass_kurisumasu", "wpn_fps_ass_contraband")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_kurisumasu")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_kurisumasu")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_kurisumasu", "wpn_fps_addon_ris")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_kurisumasu_gp_right", "a_fl_right")	
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_kurisumasu_gp_top", "a_fl_top")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_kurisumasu")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_kurisumasu")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_kurisumasu")
end
-- Mira's Hi-Power
if self.wpn_fps_pis_hipower then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_hipower")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_hipower")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_hipower", "wpn_fps_pis_pl14")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_hipower", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_hipower", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_hipower", "_9x19mm")
end
-- Zenit AK-105 bullpup
if self.wpn_fps_ass_fsbcustom then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fsbcustom", "wpn_fps_sho_basset")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fsbcustom", "wpn_fps_sho_basset")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_fsbcustom", "wpn_fps_sho_basset")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_fsbcustom")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_fsbcustom")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_fsbcustom")
	self:cafcw_wpn_a_obj_pattern_override("Gadgets", "wpn_fps_ass_fsbcustom", nil, "foregrip")
	self:cafcw_add_custom_ammo("wpn_fps_ass_fsbcustom", "_545x39mm")
end
-- Thompson SMG
if self.wpn_fps_smg_tommy then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_tommy", "wpn_fps_smg_thompson", "wpn_fps_smg_thompson_o_adapter")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_tommy", "wpn_fps_smg_thompson", "wpn_fps_smg_thompson_o_adapter")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_tommy", "wpn_fps_smg_thompson", "wpn_fps_smg_thompson_o_adapter")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_tommy")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_tommy")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_tommy", "wpn_fps_smg_thompson_fl_adapter")
end
end)