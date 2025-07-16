Hooks:PostHook( WeaponFactoryTweakData, "init", "af2011Init", function(self)
self.parts.wpn_fps_pis_af2011_body_standard.stance_mod = {
			wpn_fps_pis_af2011 = { 
				translation = Vector3(0, -2, -0.8),
				rotation = Rotation(0, 0.3, 0)
			}
		}

self.wpn_fps_pis_af2011.adds = {
		wpn_fps_upg_fl_pis_laser = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_tlr1 = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_crimson = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_x400v = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_m3x = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_o_rmr = {
			"wpn_fps_pis_beretta_o_std"
		}
	}
self.parts.wpn_fps_pis_af2011_b_il.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.parts.wpn_fps_pis_af2011_b_standard.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.parts.wpn_fps_pis_af2011_b_il_blu.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.parts.wpn_fps_pis_af2011_b_il_white.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.parts.wpn_fps_pis_af2011_b_il_purple.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.parts.wpn_fps_pis_af2011_b_il_grn.animations = {
	magazine_empty="last_recoil",
	reload = "reload",
	reload_not_empty = "reload_not_empty",
	fire = "recoil",
	fire_steelsight = "recoil"
}
self.wpn_fps_pis_x_af2011.adds = {
		wpn_fps_upg_fl_pis_laser = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_tlr1 = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_crimson = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_x400v = {
			"wpn_fps_pis_af2011_rail"
		},
		wpn_fps_upg_fl_pis_m3x = {
			"wpn_fps_pis_af2011_rail"
		}
	}


self.wpn_fps_pis_af2011.override = {
		wpn_fps_upg_o_rmr = {parent = "upper_reciever", unit="units/mods/weapons/wpn_fps_pis_af2011_pts/wpn_fps_pis_af2011_o_standard"}
	}
self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_af2011 =  {translation = Vector3(0, 1, -1),rotation = Rotation(0, -0.2, 0)}

self.wpn_fps_pis_x_af2011.override = {
		wpn_fps_pis_af2011_m_standard = {
			animations = {
				reload = "reload_right",
				reload_not_empty = "reload_not_empty_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}
		},
		wpn_fps_pis_af2011_b_standard = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_silver = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_il = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_il_blu = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_il_white = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_il_purple = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_b_il_grn = {
			animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}
		},
		wpn_fps_pis_af2011_m_ext = {
			stats = {
				extra_ammo = 10
			},
			animations = {
				reload = "reload_right",
				reload_not_empty = "reload_not_empty_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}
		}
		
	}
end )