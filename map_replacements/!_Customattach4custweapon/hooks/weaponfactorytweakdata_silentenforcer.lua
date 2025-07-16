Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_SilentEnforcer_Init", function(self)
--Spectre M4
if self.wpn_fps_smg_spectre_m4 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_spectre_m4", "wpn_fps_smg_spectre_m4_gadget_rail")
	self:cafcw_add_custom_ammo("wpn_fps_smg_spectre_m4", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_spectre_m4", "wpn_fps_smg_tec9", "wpn_fps_smg_spectre_m4_o_adapter")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_spectre_m4", "wpn_fps_smg_tec9", "wpn_fps_smg_spectre_m4_o_adapter")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_spectre_m4", "wpn_fps_smg_tec9", "wpn_fps_smg_spectre_m4_o_adapter")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_spectre_m4")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_spectre_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_spectre_m4", "wpn_fps_smg_spectre_m4_gadget_rail")
	self:cafcw_add_custom_ammo("wpn_fps_smg_x_spectre_m4", "_9x19mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_spectre_m4")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_spectre_m4")
end

--TOZ-194
if self.wpn_fps_shot_toz194 then
	self:cafcw_add_custom_ammo("wpn_fps_shot_toz194", "_12ga")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_toz194")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_toz194")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_toz194_b_short", nil, "foregrip")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_toz194")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_toz194", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_toz194", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_toz194", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_shot_toz194", "wpn_fps_ass_ak5", nil, "0,2,0.25")
end

--QBZ-95
if self.wpn_fps_ass_qbz95 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_qbz95")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_qbz95_fg_rails", "a_fgfl")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_ass_qbz95_fg_rails", "a_fgo")
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_ass_qbz95_fg_rails", "a_fgo")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_ass_qbz95_fg_rails", "a_fgo")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_qbz95", "wpn_fps_ass_qbz95", "wpn_fps_ass_qbz95_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_qbz95", "wpn_fps_ass_qbz95", "wpn_fps_ass_qbz95_rail")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_qbz95")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_qbz95")
end

--STG 44
if self.wpn_fps_ass_stg44 then
	self:cafcw_add_custom_sights("Custom_WW2_Axis", "wpn_fps_ass_stg44", "wpn_fps_ass_g3", "wpn_fps_ass_stg44_irons", "0,22,0.2") --original specter g3 || PVM xyz 
	self:cafcw_wpn_a_obj_pattern_override("Custom_WW2_Axis", "wpn_fps_ass_stg44", "a_o_clamp") 
	self:cafcw_forbids_attachment_type("Custom_WW2_Axis", "wpn_fps_upg_o_delta_rm55")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_stg44")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_stg44", "wpn_fps_ass_g3", "wpn_fps_ass_stg44_ris_special")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_stg44", "wpn_fps_ass_g3", "wpn_fps_ass_stg44_ris_special")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_stg44", "wpn_fps_ass_g3", "wpn_fps_ass_stg44_ris_special")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_stg44")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_stg44")
	if not SystemFS:exists("mods/Activate Multiple Gadgets/mod.txt") then
		self:cafcw_forbids_attachment_type("Gadgets", "wpn_fps_ass_stg44_o_scope_switch")
	end
end
	
--Mossberg 590A1
if self.wpn_fps_shot_mossberg590 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_mossberg590")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_mossberg590")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_mossberg590")
	self:cafcw_wpn_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mossberg590", nil, "foregrip")
	self:cafcw_add_custom_ammo("wpn_fps_shot_mossberg590", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_mossberg590", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_mossberg590", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_mossberg590", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_shot_mossberg590", "wpn_fps_ass_ak5", nil, "0,2,0.18")
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Custom", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mossberg590_gp_left", "a_fl_2")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mossberg590_gp_bottom", "a_fl_3", "barrel")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_shot_mossberg590_tactical_rail", nil, "upper_reciever")
	for i, part_id in pairs(attach_tables.Gadgets) do
		if self.parts.wpn_fps_shot_mossberg590_tactical_rail then
			self.parts.wpn_fps_shot_mossberg590_tactical_rail.override.wpn_fps_shot_mossberg590_gp_bottom.override[part_id] = { a_obj="a_fl_3", parent="upper_reciever" }
			self.parts.wpn_fps_shot_mossberg590_tactical_rail.override.wpn_fps_shot_mossberg590_gp_left.override[part_id] = { a_obj="a_fl_2", parent="upper_reciever" }
		end
	end
end

--QBZ-03
if self.wpn_fps_ass_qbz3 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_qbz3")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_qbz3", "wpn_fps_ass_74", "wpn_fps_ass_qbz3_mount")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_qbz3", "wpn_fps_ass_74", "wpn_fps_ass_qbz3_mount")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_qbz3", "wpn_fps_ass_74", "wpn_fps_ass_qbz3_mount")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_qbz3")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_qbz3")
end
  
--Fort-500
if self.wpn_fps_shot_f500 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_f500")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_f500")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_f500")
	self:cafcw_wpn_a_obj_pattern_override("Gadgets", "wpn_fps_shot_f500", nil, "foregrip")
	self:cafcw_add_custom_ammo("wpn_fps_shot_f500", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_f500", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_f500", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_f500", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_shot_f500", "wpn_fps_ass_ak5", nil, "0,2.5,0.25")
end

-- Makarov
if self.wpn_fps_pis_pm then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_pm")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_pm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_pm", "_9x19mm")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_pm", "wpn_fps_pis_shrew", "wpn_fps_pis_pm_o_adapter")
	self:cafcw_add_attachment_type("Gadgets_Pistol", "wpn_fps_pis_pm", "wpn_fps_pis_pm_fl_rail")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_pm")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_pm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_pm", "_9x19mm")
	self:cafcw_add_attachment_type("Gadgets_Pistol", "wpn_fps_pis_x_pm", "wpn_fps_pis_pm_fl_rail")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_xs_pm")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_xs_pm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_xs_pm", "_9x19mm")
	self:cafcw_add_attachment_type("Gadgets_Pistol", "wpn_fps_pis_xs_pm", "wpn_fps_pis_pm_fl_rail")
end

-- QBS-09
if self.wpn_fps_shot_qbs then
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_qbs")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_qbs", "wpn_fps_shot_qbs_gadget_rail")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_qbs")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_qbs", "wpn_fps_sho_ben")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_qbs", "wpn_fps_sho_ben")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_qbs", "wpn_fps_sho_ben")
	self:cafcw_add_custom_ammo("wpn_fps_shot_qbs", "_12ga_auto")
end

--Auto-Crossbow
if self.wpn_fps_bow_auto then
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_bow_auto")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_bow_auto", "wpn_fps_smg_coal")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_bow_auto", "wpn_fps_smg_coal")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_bow_auto", "wpn_fps_smg_coal")
end

--M3 Grease Gun
if self.wpn_fps_smg_m3 then
	self:cafcw_add_custom_sights("Custom_WW2_Allied", "wpn_fps_smg_m3", "wpn_fps_smg_m45", nil, "0,-2,0.4") --original specter 0, 0, -3.9 || PVM xyz 
	self:cafcw_wpn_a_obj_pattern_override("Custom_WW2_Allied", "wpn_fps_smg_m3", "a_o_glue") 	
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_m3")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_m3", "wpn_fps_smg_m45", "wpn_fps_smg_m3_o_adapter")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_m3", "wpn_fps_smg_m45", "wpn_fps_smg_m3_o_adapter")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_m3", "wpn_fps_smg_m45", "wpn_fps_smg_m3_o_adapter")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_m3")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_m3")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_m3")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_m3")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_m3")
end
	
--Gewehr 43
if self.wpn_fps_snp_g43 then
	self:cafcw_add_custom_sights("Custom_WW2_Axis", "wpn_fps_snp_g43", "wpn_fps_ass_fal", nil, "0,4,-0.2") --original specter 0, 4, -3.5 || PVM xyz 
	self:cafcw_wpn_a_obj_pattern_override("Custom_WW2_Axis", "wpn_fps_snp_g43", "a_o_clamp")
	self:cafcw_forbids_attachment_type("Custom_WW2_Axis", "wpn_fps_upg_o_45iron")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_g43")
	self:cafcw_add_custom_ammo("wpn_fps_snp_g43", "_792x57mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_g43", "wpn_fps_ass_fal", "wpn_fps_snp_g43_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_g43", "wpn_fps_ass_fal", "wpn_fps_snp_g43_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_g43", "wpn_fps_ass_fal", "wpn_fps_snp_g43_rail")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_g43", "wpn_fps_snp_g43", "wpn_fps_snp_g43_rail")
end

--Akimbo AA-12
if self.wpn_fps_shot_x_aa12 then
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_x_aa12")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_x_aa12")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_x_aa12")
	self:cafcw_add_custom_ammo("wpn_fps_shot_x_aa12", "_12ga_mag")
end

--Akimbo Street Sweepers
if self.wpn_fps_shot_x_striker then
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_x_striker")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_x_striker")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_x_striker")
	self:cafcw_add_custom_ammo("wpn_fps_shot_x_striker", "_12ga_mag")
end

-- Welrod
if self.wpn_fps_pis_welrod then
	self:cafcw_add_custom_ammo("wpn_fps_pis_welrod", "_9x19mm")
end

-- Vickers
if self.wpn_fps_lmg_vick then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_vick")
end

-- Panzerschreck
if self.wpn_fps_pschreck then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pschreck")
end

--R870 Attachments
if self.parts.wpn_fps_shot_870_fg_surefire then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_870_fg_surefire", "a_fl_mcs")
end
if self.parts.wpn_fps_shot_870_fg_rail then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_870_fg_rail", "a_fl_mcs")
end
if self.parts.wpn_fps_shot_mossberg_fg_short then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mossberg_fg_short", "a_fl_mcs")
end
if self.parts.wpn_fps_shot_870_rail_mcs then
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_shot_870_rail_mcs", "a_o_mcs")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_shot_870_rail_mcs", "a_o_mcs")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_shot_870_rail_mcs", "a_o_mcs")
end
--[[if self.parts.wpn_fps_shot_870_iron_aftermarket then
end]]

--AR Marksman
if self.wpn_fps_ass_ar60mrks then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_ar60mrks")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_ar60mrks", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_ar60mrks", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_ar60mrks", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_ass_ar60mrks", "wpn_fps_ass_ar60mrks")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_ar60mrks")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_ar60mrks")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_x_ar60mrks")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_x_ar60mrks")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_x_ar60mrks")
end

--MG 34
if self.wpn_fps_lmg_mg34 then
	self:cafcw_add_custom_sights("Custom_WW2_Axis", "wpn_fps_lmg_mg34", "wpn_fps_smg_erma", nil, "0,4,2.66")
	self:cafcw_wpn_a_obj_pattern_override("Custom_WW2_Axis", "wpn_fps_lmg_mg34", "a_o_clamp")
	self:cafcw_forbids_adds_attachment_type("Custom_WW2_Axis", "wpn_fps_lmg_mg34_o_rail")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_lmg_mg34", "wpn_fps_ass_g36")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_lmg_mg34", "wpn_fps_ass_g36")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_lmg_mg34", "wpn_fps_ass_g36")
	self:cafcw_wpn_a_obj_pattern_override("Specter", "wpn_fps_lmg_mg34", nil, "upper_reciever")
	self:cafcw_wpn_a_obj_pattern_override("ACOG", "wpn_fps_lmg_mg34", nil, "upper_reciever")
	self:cafcw_wpn_a_obj_pattern_override("Custom", "wpn_fps_lmg_mg34", nil, "upper_reciever")
	self:cafcw_forbids_attachment_type("Magnifier", "wpn_fps_lmg_mg34_m_double")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_mg34")
	self:cafcw_add_custom_ammo("wpn_fps_lmg_mg34", "_792x57mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_mg34")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_mg34")
end

--Owen Gun
if self.wpn_fps_smg_owen then
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_owen")
	self:cafcw_add_custom_ammo("wpn_fps_smg_owen", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_owen", "wpn_fps_bow_ecp", "wpn_fps_smg_owen_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_owen", "wpn_fps_bow_ecp", "wpn_fps_smg_owen_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_owen", "wpn_fps_bow_ecp", "wpn_fps_smg_owen_rail")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_owen")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_owen")
end

--TOZ-106
if self.wpn_fps_shot_toz106 then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_toz106_stock_full", "a_fl_mc20")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_toz106")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_toz106")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_toz106")
	self:cafcw_add_custom_ammo("wpn_fps_shot_toz106", "_12ga_mag")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_toz106", "wpn_fps_snp_model70", "wpn_fps_shot_toz106_o_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_toz106", "wpn_fps_snp_model70", "wpn_fps_shot_toz106_o_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_toz106", "wpn_fps_snp_model70", "wpn_fps_shot_toz106_o_rail")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_shot_toz106", "wpn_fps_snp_model70", "wpn_fps_shot_toz106_o_rail")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_shot_toz106", "wpn_fps_snp_model70", "wpn_fps_shot_toz106_o_rail")
end

--Candy Shotgun
if self.wpn_fps_shot_candy then
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_candy")
	self:cafcw_add_custom_ammo("wpn_fps_shot_candy", "_12ga")
end

--Galil Various Attachment
if self.parts.wpn_fps_upg_galil_scope_mount then
	self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_upg_galil_scope_mount", "a_o_galil")
	self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_upg_galil_scope_mount", "a_o_galil")
	self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_upg_galil_scope_mount", "a_o_galil")
	self:cafcw_part_a_obj_pattern_override("RDS45", "wpn_fps_upg_galil_scope_mount", "a_o_galil")
end

--MTs-255
if self.wpn_fps_shot_mts255 and self.wpn_fps_shot_x_mts255 and self.wpn_fps_shot_s_mts255 then
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mts255_b_short", "a_fl_short")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mts255_b_obrez", "a_fl_obrez")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_shot_mts255_ghost_rail", "a_fl_ghost")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_mts255")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_mts255")
	self:cafcw_add_custom_ammo("wpn_fps_shot_mts255", "_12ga_mag")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_shot_mts255", "wpn_fps_ass_fal")
	self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_shot_mts255_ghost_rail", "a_of_ghost")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_mts255", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_mts255", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_mts255", "wpn_fps_shot_serbu")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_x_mts255")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_x_mts255")
	self:cafcw_add_custom_ammo("wpn_fps_shot_x_mts255", "_12ga_mag")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_s_mts255")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_s_mts255")
	self:cafcw_add_custom_ammo("wpn_fps_shot_s_mts255", "_12ga_mag")
	self:cafcw_add_custom_sights("MOD_IronSightsPack_Custom", "wpn_fps_shot_s_mts255", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_s_mts255", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_s_mts255", "wpn_fps_shot_serbu")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_s_mts255", "wpn_fps_shot_serbu")
end
end)