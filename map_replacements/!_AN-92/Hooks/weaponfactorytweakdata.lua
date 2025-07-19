Hooks:PostHook( WeaponFactoryTweakData, "init", "tiltModInit", function(self)
	self.parts.wpn_fps_ass_tilt_o_dummy.stance_mod = {
		wpn_fps_ass_tilt = {
			translation = Vector3(0.12, -11, 1.6),
			rotation = Rotation(0.1, 0.7, -8.85873e-010)
		}
	}

	self.parts.wpn_fps_upg_o_tilt_scopemount.stance_mod = {
		wpn_fps_ass_tilt = {
			translation = Vector3(0, 2, -2.6),
			rotation = Rotation(0, 0, 0)
		}
	}
	self.parts.wpn_fps_ass_tilt_a_fuerte.custom_stats = {
	ammo_pickup_min_mul = .25,
	ammo_pickup_max_mul = .53
	}

	self.wpn_fps_ass_tilt.animations = {
		fire = "recoil",
		reload = "reload",
		reload_not_empty = "reload_not_empty",
		fire_steelsight = "recoil"
	}
self.wpn_fps_ass_tilt.adds = {
		wpn_fps_upg_o_specter = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_aimpoint = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_docter = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_eotech = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_t1micro = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_cmore = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_acog = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_cs = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_reflex = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_rx30 = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_spot = {
			"wpn_fps_upg_o_tilt_scopemount"
		},
		wpn_fps_upg_o_rx01 = {
			"wpn_fps_upg_o_tilt_scopemount"
		}
	}
self.wpn_fps_ass_tilt.override = {
		wpn_fps_addon_ris  = {
		unit = "units/mods/weapons/wpn_fps_ass_tilt_pts/wpn_fps_ass_tilt_addon"
		}
	}
end )