Hooks:PostHook( WeaponFactoryTweakData, "init", "spectreInit", function(self)
	self.parts.wpn_fps_smg_spectre_m4_grip_standard.stance_mod = {
		wpn_fps_smg_spectre_m4 = {
			translation = Vector3(0, 5.5, 1.5),
			rotation = Rotation(0, 0, -0)
		}
	}
	self.parts.wpn_fps_smg_spectre_m4_ironsight_dummy.stance_mod = {
		wpn_fps_smg_spectre_m4 = {
			translation = Vector3(0 , 2, -1.55),
			rotation = Rotation(0, -0.5, -0)
		}
	}
	if BeardLib.Utils:FindMod("WeaponLib") then
    table.insert(self.wpn_fps_smg_spectre_m4.uses_parts, "wpn_fps_smg_spectre_m4_a_vg")
	self.parts.wpn_fps_smg_spectre_m4_a_vg.stance_mod = {
		wpn_fps_smg_spectre_m4 = {
			translation = Vector3(0, 0, 1.2),
			rotation = Rotation(0, 0, -0)
		}
	}
    end
	self.parts.wpn_fps_smg_spectre_m4_body_silver.override = {
		wpn_fps_smg_spectre_m4_m_30 = {
			unit = "units/mods/weapons/wpn_fps_smg_spectre_m4_pts/wpn_fps_smg_spectre_m4_m_30_silver"
		},
		wpn_fps_smg_spectre_m4_stock = {
			unit = "units/mods/weapons/wpn_fps_smg_spectre_m4_pts/wpn_fps_smg_spectre_m4_stock_silver"	
	    },
		wpn_fps_smg_spectre_m4_m_standard = {
				unit = "units/mods/weapons/wpn_fps_smg_spectre_m4_pts/wpn_fps_smg_spectre_m4_m_50_silver"	
		},
		wpn_fps_smg_x_spectre_m4_m_standard = {
				unit = "units/mods/weapons/wpn_fps_smg_spectre_m4_pts/wpn_fps_smg_spectre_m4_m_50_silver"	
		}
	}
	self.wpn_fps_smg_x_spectre_m4.adds = {
	    wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_laser = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_utg = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		}
	}
	self.wpn_fps_smg_spectre_m4.adds = {
	    wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_laser = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_fl_ass_utg = {
			"wpn_fps_smg_spectre_m4_gadget_rail"
		},
		wpn_fps_upg_o_specter = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_aimpoint = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_docter = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_eotech = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_t1micro = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_cmore = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_cs = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_reflex = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_acog = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_rx01 = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_rx30 = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		},
		wpn_fps_upg_o_spot = {
			"wpn_fps_smg_spectre_m4_o_adapter"
		}
	}
    self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)    
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_tec9)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_tec9) 
    self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_spectre_m4 = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_tec9)
end )