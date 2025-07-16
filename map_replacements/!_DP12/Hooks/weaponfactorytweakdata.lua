Hooks:PostHook( WeaponFactoryTweakData, "init", "DP12ModInit", function(self)

	-- Ammo mods --
	self.wpn_fps_sho_dp12.override.wpn_fps_upg_a_slug.custom_stats.rays = 2
	self.wpn_fps_sho_dp12.override.wpn_fps_upg_a_explosive.custom_stats.rays = 2
	self.wpn_fps_sho_dp12.override.wpn_fps_upg_a_dragons_breath.custom_stats.rays = 24
	
	local dp12_custom_slugs = {
		"wpn_fps_upg_a_12_sabot",
		"wpn_fps_upg_a_12_t_sabot",
		"wpn_fps_upg_a_12_du_sabot",
		"wpn_fps_upg_a_poisonslug",
		"wpn_fps_upg_a_NormSabo",
		"wpn_fps_upg_a_SuperSabo",
		"wpn_fps_upg_a_HyperSabo",
		"wpn_fps_upg_a_minislug",
		"wpn_fps_xrepslug",
		"wpn_fps_taserslug",
		"wpn_fps_hvshell"
		}
	for id, ammo_id in pairs(dp12_custom_slugs) do
		if self.parts[ammo_id] and self.parts[ammo_id].custom_stats then
			self.wpn_fps_sho_dp12.override[ammo_id] = {}
			self.wpn_fps_sho_dp12.override[ammo_id].custom_stats = {}
			self.wpn_fps_sho_dp12.override[ammo_id].custom_stats.rays = 2
		end
	end
	
	
	-- No vertical grip --
	self.parts.wpn_fps_sho_dp12_fg_novg.weapon_hold_override = {
            bm_w_dp12 = "r870_shotgun"
        }     
	self.parts.wpn_fps_sho_dp12_fg_novg.weapon_stance_override = {
            bm_w_dp12 = "dp12_novg"
        }   
		
	self.parts.wpn_fps_sho_dp12_fg_novg_rail.weapon_hold_override = {
            bm_w_dp12 = "r870_shotgun"
        }     
	self.parts.wpn_fps_sho_dp12_fg_novg_rail.weapon_stance_override = {
            bm_w_dp12 = "dp12_novg"
        }     	
	
	-- Gadgets --
	local dp12mod_gadget = {
		"wpn_fps_upg_fl_ass_smg_sho_peqbox",
		"wpn_fps_upg_fl_ass_smg_sho_surefire",
		"wpn_fps_upg_fl_ass_peq15",
		"wpn_fps_upg_fl_ass_laser",
		"wpn_fps_upg_fl_ass_utg"
	}
	for id, g_id in pairs(dp12mod_gadget) do
		table.insert(self.parts.wpn_fps_sho_dp12_o_standard.forbids, g_id)
		table.insert(self.parts.wpn_fps_shot_dp12_norail.forbids, g_id)
		self.parts.wpn_fps_sho_dp12_fg_novg_rail.override[g_id] = {a_obj="a_fl_underrail"}
	end
	self.parts.wpn_fps_sho_dp12_fg_novg_rail.override.wpn_fps_sho_dp12_o_standard = {forbids = {}}
	self.parts.wpn_fps_sho_dp12_fg_novg_rail.override.wpn_fps_shot_dp12_norail 	  = {forbids = {}}
	
	-- Sight stuff --
	
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 3, -0.38)}
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_sho_dp12 = {translation = Vector3(0, 0, -0.38)}
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_sho_dp12 = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_g3)
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_sho_dp12.translation = Vector3(-3.1, -2, -8.24)
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_sho_dp12 = deep_clone(self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_g3)
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_sho_dp12.translation = Vector3(-3.1, -2, -8.24)

	-- Mat_config --
	local dp12_attachments = {
		"wpn_fps_sho_dp12_b_standard",
		"wpn_fps_sho_dp12_receiver",
		"wpn_fps_sho_dp12_fg_standard",
		"wpn_fps_sho_dp12_toprail",
		"wpn_fps_sho_dp12_m_standard",
		"wpn_fps_sho_dp12_m_ext",
		"wpn_fps_sho_dp12_b_ext",
		"wpn_fps_sho_dp12_ns_breacher",
		"wpn_fps_sho_dp12_fg_novg",
		"wpn_fps_sho_dp12_vg_standard",
		"wpn_fps_sho_dp12_fg_novg_rail"
	}
	for id, part_id in pairs(dp12_attachments) do
		self:SetupMatconfig_DP12( part_id, "units/mods/weapons/wpn_fps_sho_dp12_pts/wpn_fps_sho_dp12_mat_standard" )
	end
	self:SetupMatconfig_DP12( "wpn_fps_sho_dp12_receiver_fde", "units/mods/weapons/wpn_fps_sho_dp12_pts/wpn_fps_sho_dp12_mat_fde" )
	self:SetupMatconfig_DP12( "wpn_fps_sho_dp12_receiver_od", "units/mods/weapons/wpn_fps_sho_dp12_pts/wpn_fps_sho_dp12_mat_od" )

end )

function WeaponFactoryTweakData:SetupMatconfig_DP12( weapon_mod_id, material_config )
		self.parts[weapon_mod_id].material_config = Idstring(material_config)
		self.parts[weapon_mod_id].thq_material_config = Idstring(material_config .. "_thq")
		self.parts[weapon_mod_id].cc_thq_material_config = Idstring(material_config .. "_cc_thq")
		self.parts[weapon_mod_id].cc_material_config = Idstring(material_config .. "_cc")
end