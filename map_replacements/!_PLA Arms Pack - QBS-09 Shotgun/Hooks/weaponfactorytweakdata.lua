Hooks:PostHook( WeaponFactoryTweakData, "init", "qbs9ModInit", function(self)
	self.parts.wpn_fps_shot_qbs_fl.desc_id = "bm_wp_upg_fl_pis_tlr1_desc"
	self.parts.wpn_fps_shot_qbs_fl.adds = {
	        "wpn_fps_shot_qbs_ffl"
	}
	self.parts.wpn_fps_shot_qbs_b_silencer.forbids = {
	        "wpn_fps_upg_a_dragons_breath"
	}
	self.parts.wpn_fps_shot_qbs_irons.stance_mod = {
		wpn_fps_shot_qbs = {
			translation = Vector3(0.03, -2, -1),
			rotation = Rotation(0, 0.3, -0)
		}
	}
	self.parts.wpn_fps_shot_qbs_body.forbids = {
	        "wpn_fps_addon_ris"
	}
	self.wpn_fps_shot_qbs.adds = {
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			"wpn_fps_shot_qbs_gadget_rail"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			"wpn_fps_shot_qbs_gadget_rail"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			"wpn_fps_shot_qbs_gadget_rail"
		},
		wpn_fps_upg_fl_ass_laser = {
			"wpn_fps_shot_qbs_gadget_rail"
		},
		wpn_fps_upg_fl_ass_utg = {
			"wpn_fps_shot_qbs_gadget_rail"
		}
	}
	
	--Barrel 'Spoofing'
	-- self.parts.wpn_fps_shot_qbs_barrel.adds = {	"wpn_fps_shot_qbs_fbarrel" }
	-- self.parts.wpn_fps_shot_qbs_barrel_long.adds = { "wpn_fps_shot_qbs_fbarrel" }
	self.parts.wpn_fps_shot_qbs_barrel_long.override = {
		wpn_fps_shot_qbs_fbarrel = {
			unit = "units/mods/weapons/wpn_fps_shot_qbs_pts/wpn_fps_shot_qbs_fbarrel_long"	 
	    }
	}
	
	
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_sho_ben)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_qbs = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_sho_ben)
end )