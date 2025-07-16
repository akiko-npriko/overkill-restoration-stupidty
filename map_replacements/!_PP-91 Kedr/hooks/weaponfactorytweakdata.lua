Hooks:PostHook( WeaponFactoryTweakData, "init", "kedrInit", function(self)
self.parts.wpn_fps_smg_kedr_b_standard.stance_mod = {
			wpn_fps_smg_kedr = { 
				translation = Vector3(0.23, 1, -1.9),
				rotation = Rotation(0.35, 0.500001, -8.33763e-010)
			}
		}
self.wpn_fps_smg_x_kedr.override = {
		wpn_fps_smg_kedr_m_ext = {
			stats = {
				extra_ammo = 10
			}
}
	}
	self.wpn_fps_smg_kedr.adds = {
		wpn_fps_upg_o_specter = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_laser = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_utg = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_o_aimpoint = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_docter = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_eotech = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_t1micro = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_cmore = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_cs = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_reflex = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_acog = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_rx01 = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_spot = {
			"wpn_fps_smg_kedr_o_adapter"
		},
		wpn_fps_upg_o_rx30 = {
			"wpn_fps_smg_kedr_o_adapter"
		}
	}
self.wpn_fps_smg_x_kedr.adds = {
	
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_laser = {
			"wpn_fps_smg_kedr_addon"
		},
		wpn_fps_upg_fl_ass_utg = {
			"wpn_fps_smg_kedr_addon"
		}
		
	}
	self.wpn_fps_smg_kedr.forbids = {"wpn_fps_addon_ris"}
	self.wpn_fps_smg_x_kedr.forbids = {"wpn_fps_addon_ris"}


self.wpn_fps_smg_kedr.override = {
		wpn_fps_upg_o_specter = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_aimpoint = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_docter = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_eotech = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_t1micro = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_aimpoint_2 = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_eotech_xps = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_reflex = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_rx01 = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_rx30 = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_cmore = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_cs = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_spot = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_eotech = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		},
		wpn_fps_upg_o_acog = {
			stance_mod = {wpn_fps_smg_kedr = {translation = Vector3(-0.17, -2, -3),rotation = Rotation(-0.1, -0.5, 6.25322e-009)}}
		}
	}
end )