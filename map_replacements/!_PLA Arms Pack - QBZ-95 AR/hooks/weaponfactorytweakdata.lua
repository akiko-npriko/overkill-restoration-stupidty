Hooks:PostHook( WeaponFactoryTweakData, "init", "qbz95Init", function(self)	
	self.parts.wpn_fps_ass_qbz95_fg_rails.stance_mod = {
		wpn_fps_ass_qbz95 = {
			translation = Vector3(0, -5, 0.5),
			rotation = Rotation(0, 0, -0)
		}
	}
	self.parts.wpn_fps_ass_qbz95_fg_rails.override.wpn_fps_ass_qbz95_ironsight_dummy = {
		stance_mod = {
			wpn_fps_ass_qbz95 = {
			    translation = Vector3(-0.064, 5, -2.05),
			    rotation = Rotation(0, 0, -0)
			}
		}
	}
	self.parts.wpn_fps_ass_qbz95_ironsight_dummy.stance_mod = {
		wpn_fps_ass_qbz95 = {
			translation = Vector3(-0.064, -0, -1.55),
			rotation = Rotation(0, -0, -0)
	    }
	}
	self.parts.wpn_fps_ass_qbz95_scope.stance_mod = {
		wpn_fps_ass_qbz95 = {
			translation = Vector3(-0, 9, -3.5),
			rotation = Rotation(0, -0, -0)
	    }
	}
	self.parts.wpn_fps_ass_qbz95_scope.override = {
	    wpn_fps_ass_qbz95_body_iron_sights = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
		}
	}
	self.parts.wpn_fps_ass_qbz95_bipod.has_description = true
	self.parts.wpn_fps_ass_qbz95_bipod.desc_id = "bm_wp_fps_ass_qbz95_bipod_desc"
	self.wpn_fps_ass_qbz95.adds = {
		wpn_fps_upg_o_specter = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_aimpoint = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_docter = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_eotech = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_t1micro = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_cmore = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_cs = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_reflex = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_acog = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_rx01 = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_rx30 = {
			"wpn_fps_ass_qbz95_rail"
		},
		wpn_fps_upg_o_spot = {
			"wpn_fps_ass_qbz95_rail"
		}
	}
    self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95 = {translation = Vector3(0, 7, -4.8)}
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_qbz95 = {translation = Vector3(0, 9, -4.8)}
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_qbz95)
    self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_qbz95 = {translation = Vector3(0, 9, -4.8)}
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_qbz95 = {translation = Vector3(1.5, 0, -16.3),rotation = Rotation(0, 1.5, -45)}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_qbz95 = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_qbz95)
end )