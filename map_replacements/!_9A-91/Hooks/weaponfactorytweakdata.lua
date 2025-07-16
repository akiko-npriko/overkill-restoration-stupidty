Hooks:PostHook( WeaponFactoryTweakData, "init", "vsk94ModInit", function(self)
	self.parts.wpn_fps_ass_vsk94_barrel.stance_mod = {
		wpn_fps_ass_vsk94 = {
			translation = Vector3(0, -7, 0.7),
			rotation = Rotation(0, 1.3, -0)
		}
	}
self.parts.wpn_fps_ass_vsk94_grip_sniper.override = {
		wpn_fps_ass_vsk94_grip = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
		}
}
self.wpn_fps_ass_vsk94.adds = {
		wpn_fps_upg_o_specter = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_aimpoint = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_docter = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_eotech = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_t1micro = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_cmore = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_acog = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_cs = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_reflex = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_rx30 = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_spot = {
			"wpn_fps_ass_vsk94_mount"
		},
		wpn_fps_upg_o_rx01 = {
			"wpn_fps_ass_vsk94_mount"
		}
	}

self.wpn_fps_ass_vsk94.override = {
		wpn_fps_upg_o_specter = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_aimpoint = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_docter = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_eotech = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_t1micro = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_aimpoint_2 = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_eotech_xps = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_spot = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_reflex = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_rx01 = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_rx30 = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_cmore = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_cs = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_eotech = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_acog = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		},
		wpn_fps_upg_o_xpsg33_magnifier = {
			stance_mod = {wpn_fps_ass_vsk94 = {translation = Vector3(0, 4, -4.1),rotation = Rotation(0, -1.25, 0)}}
		}

	}			

end )