if not PickUpWeapons or not restoration then
  return
end

Hooks:PostHook(WeaponFactoryTweakData, "init", "init_pickup_sc", function(self)

	table.insert(self.wpn_fps_ass_m4.uses_parts, "wpn_fps_ass_tecci_upper_reciever_m4")	

	self.parts.wpn_fps_ass_tecci_upper_reciever_m4 = deep_clone(self.parts.wpn_fps_ass_tecci_upper_reciever)
	self.parts.wpn_fps_ass_tecci_upper_reciever_m4.forbids = { "wpn_fps_addon_ris" }
	self.parts.wpn_fps_ass_tecci_upper_reciever_m4.stance_mod = {
		wpn_fps_ass_m4 = {
			translation = Vector3(0, 0, -0.6997)
		}
	}
    self.parts.wpn_fps_ass_tecci_upper_reciever_m4.override = {
        wpn_fps_ass_tecci_lower_reciever = {
            adds = {}
        },
		wpn_fps_amcar_bolt_standard = {
			unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_bolt_edge"
		}
    }
	self.parts.wpn_fps_ass_tecci_upper_reciever_m4.visibility = {
		{
			objects = {
				g_bolt = false
			}
		}		
	}
	
    self.wpn_fps_ass_flint.override = self.wpn_fps_ass_flint.override or {}
    self.wpn_fps_ass_flint.override.wpn_fps_upg_vg_ass_smg_afg_vanilla = {
			a_obj = "a_fg"
    }

	if self.parts.wpn_fps_ass_g3_body_hk33 then

		PickUpWeapons.weapon_table.hk33 = {
			id = "g3",
			blueprint = {
				"wpn_fps_ass_g3_b_long",
				"wpn_fps_ass_g3_body_lower",
				"wpn_fps_ass_g3_body_upper",
				"wpn_fps_ass_g3_fg_bipod",
				"wpn_fps_lmg_hk21_g_standard",
				"wpn_fps_ass_g3_m_mag",
				"wpn_fps_ass_g3_s_wood",
				"wpn_fps_ass_g3_body_hk33",
				"wpn_fps_upg_fl_ass_utg",
				"wpn_fps_upg_o_reflex"
			},
			cosmetics = {
				id = "color_gray_black",
				quality = "mint",
				color_index = 6
			}
		}

		PickUpWeapons.weapon_table.hk33_bravo = {
			id = "g3",
			blueprint = {
				"wpn_fps_ass_g3_b_long",
				"wpn_fps_ass_g3_body_lower",
				"wpn_fps_ass_g3_body_upper",
				"wpn_fps_ass_g3_fg_railed",
				"wpn_fps_lmg_hk21_g_standard",
				"wpn_fps_ass_g3_m_mag",
				"wpn_fps_smg_mp5_s_adjust",
				"wpn_fps_ass_g3_body_hk33",
				"wpn_fps_upg_fl_ass_peq15",
				"wpn_fps_upg_o_acog"
			},
			cosmetics = {
				id = "color_gray_black",
				quality = "mint",
				color_index = 6
			}
		}

	end

	if self.parts.wpn_fps_ass_scar_body_light and not self.parts.wpn_fps_ass_scar16_body_standard then

		PickUpWeapons.weapon_table[("units/payday2/weapons/wpn_npc_scar_light/wpn_npc_scar_light"):key()] = {
			id = "scar",
			blueprint = {
				"wpn_fps_ass_scar_body_light",
				"wpn_fps_ass_scar_m_standard",
				"wpn_fps_ass_scar_b_medium",
				"wpn_fps_ass_scar_body_standard",
				"wpn_fps_ass_scar_s_standard",
				"wpn_fps_upg_o_rx01",
				"wpn_fps_upg_m4_g_standard_vanilla",
				"wpn_fps_ass_scar_ns_standard"
			},
			cosmetics = {
				id = "color_tan_khaki",
				quality = "mint",
				color_index = 6
			}
		}
		
	elseif self.parts.wpn_fps_ass_scar16_body_standard then
	
		PickUpWeapons.weapon_table[("units/payday2/weapons/wpn_npc_scar_light/wpn_npc_scar_light"):key()] = {
			id = "scar16",
			blueprint = {
				"wpn_fps_m4_uupg_m_std_vanilla",
				"wpn_fps_ass_scar16_b_standard",
				"wpn_fps_ass_scar16_body_standard",
				"wpn_fps_ass_scar16_s_standard",
				"wpn_fps_upg_o_rx01",
				"wpn_fps_upg_m4_g_standard_vanilla",
				"wpn_fps_ass_scar_ns_standard"
			},
			cosmetics = {
				id = "color_tan_khaki",
				quality = "mint",
				color_index = 6
			}
		}	

	end

	if self.parts.wpn_fps_shot_r870_fg_swat then

		PickUpWeapons.weapon_table.r870 = {
			blueprint = {
				"wpn_fps_shot_r870_body_standard",
				"wpn_fps_shot_r870_b_long",
				"wpn_fps_shot_r870_fg_swat",
				"wpn_fps_shot_r870_s_solid_vanilla",
				"wpn_fps_upg_m4_g_standard"
			}
		}

	end

	if self.parts.wpn_fps_smg_mp5_s_adjusted then

		PickUpWeapons.weapon_table.mp5_tactical = {
			id = "new_mp5",
			blueprint = {
				"wpn_fps_smg_mp5_body_mp5",
				"wpn_fps_smg_mp5_fg_m5k",
				"wpn_fps_upg_ns_ass_smg_small",
				"wpn_fps_smg_mp5_m_straight",
				"wpn_fps_upg_o_cmore",
				"wpn_fps_smg_mp5_s_adjusted",
				"wpn_fps_upg_fl_ass_smg_sho_peqbox",
				"wpn_fps_upg_fl_ass_smg_sho_surefire",
				"wpn_fps_upg_vg_ass_smg_stubby"
			},
			offsets = {
				wpn_fps_upg_fl_ass_smg_sho_surefire = {
					translation = Vector3(-4.6, 2, 0),
					rotation = Rotation(0, 0, 180)
				}--[[,
				wpn_fps_upg_vg_ass_smg_stubby = {
					translation = Vector3(0, -5, 0)
				}]]
			}
		}
		
	else

		PickUpWeapons.weapon_table.mp5_tactical = {
			id = "new_mp5",
			blueprint = {
				"wpn_fps_smg_mp5_body_mp5",
				"wpn_fps_smg_mp5_fg_m5k",
				"wpn_fps_upg_ns_ass_smg_small",
				"wpn_fps_smg_mp5_m_straight",
				"wpn_fps_upg_o_cmore",
				"wpn_fps_smg_mp5_s_adjust",
				"wpn_fps_upg_fl_ass_smg_sho_peqbox",
				"wpn_fps_upg_fl_ass_smg_sho_surefire",
				"wpn_fps_upg_vg_ass_smg_stubby"
			},
			offsets = {
				wpn_fps_upg_fl_ass_smg_sho_surefire = {
					translation = Vector3(-4.6, 2, 0),
					rotation = Rotation(0, 0, 180)
				},
				wpn_fps_smg_mp5_s_adjust = {
					translation = Vector3(0, 14, 0)
				}
			}
		}

	end
	
	if self.parts.wpn_fps_lmg_hk21_s_pdth then

		PickUpWeapons.weapon_table.hk23_sc = {
			id = "hk21",
			blueprint = {
				"wpn_fps_lmg_hk21_b_short",
				"wpn_fps_lmg_hk21_body_lower",
				"wpn_fps_lmg_hk21_body_upper",
				"wpn_fps_lmg_hk21_fg_short",
				"wpn_fps_lmg_hk21_g_standard",
				"wpn_fps_lmg_hk21_m_standard",
				"wpn_fps_lmg_hk21_s_pdth",
				"wpn_fps_upg_ns_ass_smg_firepig",
				"wpn_fps_upg_o_eotech_xps"
			}
		}
	
	else

		PickUpWeapons.weapon_table.hk23_sc = {
			id = "hk21",
			blueprint = {
				"wpn_fps_lmg_hk21_b_short",
				"wpn_fps_lmg_hk21_body_lower",
				"wpn_fps_lmg_hk21_body_upper",
				"wpn_fps_lmg_hk21_fg_short",
				"wpn_fps_lmg_hk21_g_standard",
				"wpn_fps_lmg_hk21_m_standard",
				"wpn_fps_smg_mp5_s_adjust",
				"wpn_fps_upg_ns_ass_smg_firepig",
				"wpn_fps_upg_o_eotech_xps"
			}
		}

	end

	if self.parts.wpn_fps_ass_s556_fg_standard then

		self.wpn_fps_ass_s556.override.wpn_fps_upg_pis_ns_flash = {
			parent = "barrel",
			a_obj = "a_ns"		
		}

		PickUpWeapons.weapon_table.s553_zeal = {
			id = "s556",
			blueprint = {
				--"wpn_fps_ass_s552_b_long",
					"wpn_fps_ass_s556_b_long",
					"wpn_fps_upg_pis_ns_flash",
					"wpn_fps_ass_s556_fg_railed",
					"wpn_fps_upg_o_eotech_xps",
					"wpn_fps_ass_s552_g_standard_green",
					"wpn_fps_ass_s552_s_standard_green",
					"wpn_fps_ass_s556_body_standard_white",
					"wpn_fps_m4_upg_m_quick",
					"wpn_fps_upg_fl_ass_smg_sho_surefire",
					"wpn_fps_upg_i_siege"
			},
			offsets = {
				wpn_fps_upg_o_eotech_xps = {
					translation = Vector3(0, -0.5, 0)
				},
				wpn_fps_ass_s552_b_long = {
					translation = Vector3(0, 5.6, 0)
				}
			}
		}
	
	else
	
		PickUpWeapons.weapon_table.s553_zeal = {
			id = "s552",
			blueprint = {
					"wpn_fps_ass_s552_b_long",
					"wpn_fps_ass_s552_fg_railed",
					"wpn_fps_upg_o_eotech_xps",
					"wpn_fps_ass_s552_g_standard_green",
					"wpn_fps_ass_s552_s_standard_green",
					"wpn_fps_ass_s552_body_standard",
					"wpn_fps_ass_s552_m_standard",
					"wpn_fps_upg_fl_ass_smg_sho_surefire"
			}
		}

	end
	
	if self.parts.wpn_fps_ass_asval_m_10rd then

		PickUpWeapons.weapon_table.asval_snp = {
			id = "asval",
			blueprint = {
				"wpn_fps_ass_asval_b_standard",
				"wpn_fps_ass_asval_body_standard",
				"wpn_fps_ass_asval_fg_standard",
				"wpn_fps_ass_asval_m_10rd",
				"wpn_fps_ass_asval_s_solid",
				"wpn_fps_upg_o_tf90",
				"wpn_fps_upg_fl_ass_laser",
				"wpn_fps_upg_i_asval_spp"
			}
		}
	
	else
	
		PickUpWeapons.weapon_table.asval_snp = {
			id = "asval",
			blueprint = {
				"wpn_fps_ass_asval_b_standard",
				"wpn_fps_ass_asval_body_standard",
				"wpn_fps_ass_asval_fg_standard",
				"wpn_fps_ass_asval_m_standard",
				"wpn_fps_ass_asval_s_solid",
				"wpn_fps_upg_o_tf90",
				"wpn_fps_upg_fl_ass_laser",
				"wpn_fps_upg_i_asval_spp"
			}
		}
			
	end
	
end)

PickUpWeapons.weapon_table.ak47 = {
	id = "akm",
	blueprint = {
		"wpn_fps_ass_akm_b_standard",
		"wpn_fps_ass_akm_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_upg_ak_fg_standard",
		"wpn_fps_upg_ak_g_wgrip",
		"wpn_upg_ak_m_akm",
		"wpn_fps_upg_ak_s_solidstock"
	}
}

PickUpWeapons.weapon_table.akmsu = {
	id = "vityaz",
	blueprint = {
		"wpn_fps_smg_vityaz_b_standard",
		"wpn_fps_smg_vityaz_ns_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_fps_smg_vityaz_s_short",
		"wpn_fps_smg_vityaz_m_standard",
		"wpn_fps_smg_vityaz_body_standard",
		"wpn_fps_smg_vityaz_bolt_standard",
		"wpn_fps_smg_vityaz_fg_standard"
	}
}

PickUpWeapons.weapon_table.beretta92 = {
	id = "b92fs",
	blueprint = {
		"wpn_fps_pis_beretta_body_beretta",
		"wpn_fps_pis_beretta_b_std",
		"wpn_fps_pis_beretta_g_std",
		"wpn_fps_pis_beretta_m_std",
		"wpn_fps_pis_beretta_o_std",
		"wpn_fps_pis_beretta_sl_std",
		"wpn_fps_upg_ns_pis_medium",
		"wpn_fps_upg_fl_pis_tlr1"
	}
}

PickUpWeapons.weapon_table.g36 = {
	blueprint = {
		"wpn_fps_ass_g36_m_standard",
		"wpn_fps_ass_g36_fg_k",
		"wpn_fps_upg_o_eotech_xps",
		"wpn_fps_upg_o_xpsg33_magnifier",
		"wpn_fps_ass_g36_s_kv",
		"wpn_fps_upg_fl_pis_tlr1"
	},
	offsets = {
		wpn_fps_upg_fl_pis_tlr1 = {
			translation = Vector3(-3, 5.5, -3)
		}
	}
}

PickUpWeapons.weapon_table.m14_sniper = {
	id = "msr",
	blueprint = {
		"wpn_fps_snp_msr_b_standard",
		"wpn_fps_snp_msr_body_msr",
		"wpn_fps_snp_msr_m_standard",
		"wpn_fps_upg_o_shortdot"
	}
}

PickUpWeapons.weapon_table.m249 = {
	blueprint = {
		"wpn_fps_lmg_m249_body_standard",
		"wpn_fps_lmg_m249_m_standard",
		"wpn_fps_lmg_m249_upper_reciever",
		"wpn_fps_lmg_m249_b_long",
		"wpn_fps_lmg_m249_fg_standard",
		"wpn_fps_lmg_m249_s_solid"
	}
}

PickUpWeapons.weapon_table.m4 = {
	id = "new_m4",
	blueprint = {
		"wpn_fps_upg_m4_g_standard_vanilla",
		"wpn_fps_m4_lower_reciever",
		"wpn_fps_m4_upper_reciever_round",
		"wpn_fps_m4_uupg_b_short",
		"wpn_fps_upg_m4_s_standard_vanilla",
		"wpn_fps_m4_uupg_draghandle",
		"wpn_fps_amcar_bolt_standard",
		"wpn_fps_m4_uupg_fg_rail_m4a1",
		"wpn_fps_m4_uupg_fg_rail",
		"wpn_fps_m4_uupg_m_std_vanilla",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_fl_ass_smg_sho_peqbox"
	},
	offsets = {
		wpn_fps_m4_uupg_fg_rail_m4a1 = {
			translation = Vector3(0, -0.5, 0)
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			translation = Vector3(-2.8, -2.5, 2.8),
			rotation = Rotation(0, 0, 270)
		}
	}
}

PickUpWeapons.weapon_table.m4_yellow = {
	id = "new_m4",
	blueprint = {
		"wpn_fps_upg_m4_g_standard_vanilla",
		"wpn_fps_m4_lower_reciever",
		"wpn_fps_m4_upper_reciever_round",
		"wpn_fps_m4_uupg_b_short",
		"wpn_fps_upg_m4_s_standard_vanilla",
		"wpn_fps_m4_uupg_draghandle",
		"wpn_fps_amcar_bolt_standard",
		"wpn_fps_m4_uupg_fg_rail_m4a1",
		"wpn_fps_m4_uupg_fg_rail",
		"wpn_fps_m4_uupg_m_std_vanilla",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_fl_ass_smg_sho_peqbox"
	},
	offsets = {
		wpn_fps_m4_uupg_fg_rail_m4a1 = {
			translation = Vector3(0, -0.5, 0)
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			translation = Vector3(-2.8, -2.5, 2.8),
			rotation = Rotation(0, 0, 270)
		}
	},
	cosmetics = {
		id = "color_yellow",
		quality = "mint",
		color_index = 6
	}
}

PickUpWeapons.weapon_table.mp5 = {
	id = "new_mp5",
	blueprint = {
		"wpn_fps_smg_mp5_body_mp5",
		"wpn_fps_smg_mp5_m_std",
		"wpn_fps_smg_mp5_fg_flash",
		"wpn_fps_smg_mp5_s_solid"
	}
}

PickUpWeapons.weapon_table.s552 = {
	blueprint = {
		"wpn_fps_ass_s552_o_flipup",
		"wpn_fps_ass_s552_m_standard",
		"wpn_fps_ass_s552_b_standard",
		"wpn_fps_ass_s552_fg_railed",
		"wpn_fps_ass_s552_s_standard",
		"wpn_fps_ass_s552_g_standard",
		"wpn_fps_upg_ns_ass_smg_large",
		"wpn_fps_ass_s552_body_standard_black"
	}
}

PickUpWeapons.weapon_table.scar = {
	id = "new_m14",
	blueprint = {
		"wpn_fps_ass_m14_b_standard",
		"wpn_fps_ass_m14_body_lower",
		"wpn_fps_ass_m14_body_upper",
		"wpn_fps_ass_m14_body_jae",
		"wpn_fps_ass_m14_m_standard",
		"wpn_fps_upg_o_specter",
		"wpn_fps_upg_fl_ass_peq15"--,
		--"wpn_fps_upg_i_g3sg1"
	}
}

PickUpWeapons.weapon_table.ump = {
	id = "schakal",
	blueprint = {
		"wpn_fps_smg_schakal_b_standard",
		"wpn_fps_smg_schakal_body_lower",
		"wpn_fps_smg_schakal_body_upper",
		"wpn_fps_smg_schakal_m_standard",
		"wpn_fps_smg_schakal_s_standard",
		"wpn_fps_smg_schakal_dh_standard",
		"wpn_fps_smg_schakal_bolt_standard",
		"wpn_fps_smg_schakal_extra_magrelease",
		"wpn_fps_upg_fl_ass_laser",
		"wpn_fps_upg_o_cmore",
		"wpn_fps_upg_vg_ass_smg_verticalgrip"
	}
}

PickUpWeapons.weapon_table.swamp = {
	id = "m16",
	blueprint = {
		"wpn_fps_upg_m4_g_standard_vanilla",
		"wpn_fps_m4_lower_reciever",
		"wpn_fps_m4_upper_reciever_edge",
		"wpn_fps_m4_uupg_b_long",
		"wpn_fps_m16_s_solid",
		"wpn_fps_m4_uupg_draghandle",
		"wpn_fps_amcar_bolt_standard",
		"wpn_fps_ass_m16_os_frontsight",
		"wpn_fps_m16_fg_railed",
		"wpn_fps_upg_m4_m_quad",
		"wpn_fps_upg_o_aimpoint",
		"wpn_fps_upg_fl_ass_smg_sho_peqbox",
		
	},
	offsets = {
		wpn_fps_m4_uupg_b_long = {
			translation = Vector3(0, -3, 0)
		},
		wpn_fps_ass_m16_os_frontsight = {
			translation = Vector3(0, -1.5, 0)
		}
	}
}

PickUpWeapons.weapon_table.bayou = {
	id = "spas12",
	blueprint = {
		"wpn_fps_sho_b_spas12_short",
		"wpn_fps_sho_body_spas12_standard",
		"wpn_fps_sho_fg_spas12_standard",
		"wpn_fps_sho_s_spas12_folded"
	}
}

PickUpWeapons.weapon_table.m249_bravo = {
	id = "m249",
	blueprint = {
		"wpn_fps_lmg_m249_body_standard",
		"wpn_fps_lmg_m249_m_standard",
		"wpn_fps_lmg_m249_upper_reciever",
		"wpn_fps_lmg_m249_b_long",
		"wpn_fps_lmg_m249_fg_standard",
		"wpn_fps_lmg_m249_s_solid"
	}	
}

PickUpWeapons.weapon_table.m249_bravo = {
	id = "m249",
	blueprint = {
		"wpn_fps_lmg_m249_body_standard",
		"wpn_fps_lmg_m249_m_standard",
		"wpn_fps_lmg_m249_upper_reciever",
		"wpn_fps_lmg_m249_b_long",
		"wpn_fps_lmg_m249_fg_standard",
		"wpn_fps_lmg_m249_s_solid"
	}	
}

PickUpWeapons.weapon_table.deagle_guard = {
	id = "deagle"
}

PickUpWeapons.weapon_table.streak = {
	id = "pl14"
}

PickUpWeapons.weapon_table.x_streak = {
	id = "x_pl14"
}

PickUpWeapons.weapon_table.aksu = {
	id = "akmsu",
	blueprint = {
		"wpn_fps_smg_akmsu_body_lowerreceiver",
		"wpn_fps_ass_akm_body_upperreceiver_vanilla",
		"wpn_fps_smg_akmsu_b_standard",
		"wpn_fps_smg_akmsu_fg_standard",
		"wpn_upg_ak_g_standard",
		"wpn_upg_ak_m_akm",
		"wpn_upg_ak_s_skfoldable",
		"wpn_fps_upg_i_rpk74",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	}
}

PickUpWeapons.weapon_table.akmsu_tactical = {
	id = "vityaz",
	blueprint = {
		"wpn_fps_smg_vityaz_b_standard",
		"wpn_fps_upg_ns_ass_pbs1",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_fps_smg_vityaz_s_short",
		"wpn_fps_smg_vityaz_m_standard",
		"wpn_fps_smg_vityaz_body_standard",
		"wpn_fps_smg_vityaz_bolt_standard",
		"wpn_fps_smg_vityaz_fg_standard",
		"wpn_fps_upg_fl_ass_smg_sho_peqbox",
		"wpn_fps_upg_o_uh"			
	}
}

PickUpWeapons.weapon_table.m1911 = {
	id = "colt_1911",
	blueprint = {
		"wpn_fps_pis_1911_body_standard",
		"wpn_fps_pis_1911_b_standard",
		"wpn_fps_pis_1911_g_standard",
		"wpn_fps_pis_1911_m_standard",
		"wpn_fps_upg_fl_pis_tlr1"	
	}
}

PickUpWeapons.weapon_table.m500 = {
	id = "m590",
	blueprint = {
		"wpn_fps_sho_m590_b_standard",
		"wpn_fps_sho_m590_s_standard",
		"wpn_fps_sho_m590_g_standard",
		"wpn_fps_sho_m590_body_standard",
		"wpn_fps_sho_m590_fg_standard",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	}
}

PickUpWeapons.weapon_table.fort_500 = {
	id = "f500",	--requires Silent Enforcer's Fort 500 mod
	blueprint = {
		"wpn_fps_shot_f500_b_standard",
		"wpn_fps_shot_f500_body_standard",
		"wpn_fps_shot_f500_grip_standard",
		"wpn_fps_shot_f500_fg_pump",
		"wpn_fps_shot_f500_ironsight",
		"wpn_fps_shot_r870_body_rack"
	}
}

PickUpWeapons.weapon_table[("units/payday2/weapons/wpn_npc_oicw/wpn_npc_oicw"):key()] = {
	id = "osipr"
}

PickUpWeapons.weapon_table.aa12_conc = {
	id = "aa12",
	blueprint = {
		"wpn_fps_sho_aa12_mag_drum",
		"wpn_fps_sho_aa12_dh",
		"wpn_fps_sho_aa12_bolt",
		"wpn_fps_sho_aa12_body",
		"wpn_fps_sho_aa12_barrel",
		"wpn_fps_sho_aa12_body_rear_sight"--[[,
		"wpn_fps_upg_a_explosive"]]
	}		
}

PickUpWeapons.weapon_table.aa12 = {
	blueprint = {
		"wpn_fps_sho_aa12_mag_drum",
		"wpn_fps_sho_aa12_dh",
		"wpn_fps_sho_aa12_bolt",
		"wpn_fps_sho_aa12_body",
		"wpn_fps_sho_aa12_barrel",
		"wpn_fps_sho_aa12_body_rear_sight"
	}		
}

PickUpWeapons.weapon_table.amcar = {
	blueprint = {
		"wpn_fps_upg_m4_g_standard_vanilla",
		"wpn_fps_m4_lower_reciever",
		"wpn_fps_m4_upper_reciever_edge",
		"wpn_fps_m4_uupg_b_medium",
		"wpn_fps_upg_m4_s_standard_vanilla",
		"wpn_fps_m4_uupg_draghandle",
		"wpn_fps_amcar_bolt_standard",
		"wpn_fps_m4_uupg_fg_rail",
		"wpn_fps_m4_uupg_fg_rail_m4a1",
		"wpn_fps_m4_uupg_m_std_vanilla",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_fl_ass_smg_sho_peqbox"
	},
	offsets = {
		wpn_fps_upg_m4_s_standard_vanilla = {
			translation = Vector3(0, 3, 0)
		},
		wpn_fps_m4_uupg_b_medium = {
			translation = Vector3(0, 3, 0)
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			translation = Vector3(-2.8, -2.5, 2.8),
			rotation = Rotation(0, 0, 270)
		},
		wpn_fps_m4_uupg_fg_rail_m4a1 = {
			translation = Vector3(0, -0.5, 0)
		}
	}	
}

PickUpWeapons.weapon_table.hajk = {
	blueprint = {
		"wpn_fps_smg_hajk_b_standard",
		"wpn_fps_smg_hajk_fg_standard",
		"wpn_fps_smg_hajk_g_standard",
		"wpn_fps_m4_uupg_m_std_vanilla",
		"wpn_fps_smg_hajk_ns_standard",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_smg_hajk_s_standard",
		"wpn_fps_smg_hajk_body_standard",
		"wpn_fps_smg_hajk_vg_moe",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	}
}

PickUpWeapons.weapon_table.saiga = {
	blueprint = {
		"wpn_fps_smg_akmsu_body_lowerreceiver",
		"wpn_fps_ass_akm_body_upperreceiver_vanilla",
		"wpn_fps_shot_saiga_b_standard",
		"wpn_upg_saiga_m_20rnd",
		"wpn_fps_upg_m4_s_mk46",
		"wpn_upg_saiga_fg_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_upg_o_marksmansight_rear_vanilla",
		"wpn_fps_upg_shot_ns_king"
	}
}

PickUpWeapons.weapon_table.saiga_conc = {
	id = "saiga",
	blueprint = {
		"wpn_fps_smg_akmsu_body_lowerreceiver",
		"wpn_fps_ass_akm_body_upperreceiver_vanilla",
		"wpn_fps_shot_saiga_b_standard",
		"wpn_upg_saiga_m_20rnd",
		"wpn_fps_upg_m4_s_mk46",
		"wpn_upg_saiga_fg_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_upg_o_marksmansight_rear_vanilla",
		"wpn_fps_upg_shot_ns_king"--[[,
		"wpn_fps_upg_a_explosive"]]
	}
}

PickUpWeapons.weapon_table[("units/pd2_mod_reapers/weapons/wpn_npc_ak47_sc/wpn_npc_ak47_sc"):key()] = {
	id = "ak74",
	blueprint = {
		"wpn_fps_ass_74_b_standard",
		"wpn_fps_ass_74_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_upg_ak_fg_standard",
		"wpn_upg_ak_g_standard",
		"wpn_fps_ass_74_m_standard",
		"wpn_upg_ak_s_folding",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	}
}

PickUpWeapons.weapon_table.ak12 = {
	id = "flint",
	blueprint = {
		"wpn_fps_ass_flint_b_standard",
		"wpn_fps_ass_flint_ns_standard",
		"wpn_fps_ass_flint_body_upperreceiver",
		"wpn_fps_ass_flint_m_standard",
		"wpn_fps_ass_flint_fg_standard",
		"wpn_fps_ass_flint_dh_standard",
		"wpn_fps_ass_flint_ns_standard",
		"wpn_fps_ass_flint_o_standard",
		"wpn_fps_ass_flint_s_standard",
		"wpn_fps_ass_flint_g_standard",
		"wpn_fps_ass_flint_m_release_standard",
		"wpn_fps_upg_o_aimpoint",
		"wpn_fps_upg_fl_ass_peq15",
		"wpn_fps_upg_vg_ass_smg_afg_vanilla"
	},
	cosmetics = {
		id = "color_white",
		quality = "mint",
		color_index = 2
	},
	offsets = {
		wpn_fps_upg_vg_ass_smg_afg_vanilla = {
			translation = Vector3(0, 11.1001, -2.1993)
		},
		wpn_fps_upg_fl_ass_peq15 = {
			translation = Vector3(-2.8774, -1.11485, 1.7959),
			rotation = Rotation(0, 0, 270)			
		}
	}	
}

PickUpWeapons.weapon_table.ak17_bravo = {
	id = "flint",
	blueprint = {
		"wpn_fps_ass_flint_b_standard",
		"wpn_fps_ass_flint_body_upperreceiver",
		"wpn_fps_upg_ak_m_quad",
		"wpn_fps_ass_flint_fg_standard",
		"wpn_fps_ass_flint_dh_standard",
		"wpn_fps_ass_flint_ns_standard",
		"wpn_fps_ass_flint_o_standard",
		"wpn_fps_ass_flint_s_standard",
		"wpn_fps_ass_flint_g_standard",
		"wpn_fps_ass_flint_m_release_standard",
		"wpn_fps_upg_o_t1micro",
		"wpn_fps_upg_fl_ass_peq15"
	},
	offsets = {
		wpn_fps_upg_o_t1micro = {
			translation = Vector3(0, -3, 0)
		}
	},
	cosmetics = {
		id = "color_white",
		quality = "mint",
		color_index = 2
	}
}

PickUpWeapons.weapon_table.rpk74_bravo = {
	id = "rpk",
	blueprint = {
		"wpn_fps_lmg_rpk_b_standard",
		"wpn_fps_ass_akm_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_fps_lmg_rpk_fg_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_lmg_rpk_m_drum",
		"wpn_fps_lmg_rpk_s_standard",
		"wpn_fps_upg_fl_ass_utg",
		"wpn_fps_upg_bp_lmg_lionbipod",
		"wpn_fps_upg_i_rpk74"
	},
	cosmetics = {
		id = "color_gray_black",
		quality = "mint",
		color_index = 6
	}
}

PickUpWeapons.weapon_table.argos_bravo = {
	id = "ultima",
	blueprint = {
		"wpn_fps_sho_ultima_b_standard",
		"wpn_fps_sho_ultima_s_standard",
		"wpn_fps_sho_ultima_m_standard",
		"wpn_fps_sho_ultima_body_standard",
		"wpn_fps_sho_ultima_fg_standard",
		"wpn_fps_sho_ultima_body_rack"
	}
}

PickUpWeapons.weapon_table.ak102 = {
	id = "ak74",
	blueprint = {
		"wpn_fps_ass_74_b_standard",
		"wpn_fps_ass_74_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_upg_ak_fg_standard",
		"wpn_upg_ak_g_standard",
		"wpn_fps_ass_74_m_standard",
		"wpn_upg_ak_s_folding",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	}
}

PickUpWeapons.weapon_table.ak103 = {
	id = "ak74",
	blueprint = {
		"wpn_fps_ass_74_b_standard",
		"wpn_fps_ass_74_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_fps_lmg_rpk_fg_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_fps_ass_74_m_standard",
		"wpn_fps_upg_ak_s_solidstock",
		"wpn_fps_upg_o_ak_scopemount",
		"wpn_fps_upg_o_cmore",
		"wpn_fps_upg_fl_ass_utg"
	},
	cosmetics = {
		id = "color_gray_black",
		quality = "mint",
		color_index = 6
	}
}

PickUpWeapons.weapon_table[("units/pd2_mod_reapers/weapons/wpn_npc_ak47_taser/wpn_npc_ak47_taser"):key()] = {
	id = "ak74",
	blueprint = {
		"wpn_fps_ass_74_b_standard",
		"wpn_fps_ass_74_body_upperreceiver",
		"wpn_fps_ass_ak_body_lowerreceiver",
		"wpn_fps_lmg_rpk_fg_standard",
		"wpn_fps_upg_ak_g_pgrip",
		"wpn_fps_ass_74_m_standard",
		"wpn_fps_upg_ak_s_solidstock",
		"wpn_fps_upg_o_ak_scopemount",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	},
	cosmetics = {
		id = "color_yellow",
		quality = "mint",
		color_index = 6
	}
}

PickUpWeapons.weapon_table.sr2_smg_titan = {
	id = "sr2",
	blueprint = {
		"wpn_fps_smg_sr2_body_lower",
		"wpn_fps_smg_sr2_b_standard",
		"wpn_fps_smg_sr2_fg_standard",
		"wpn_fps_smg_sr2_m_mag",
		"wpn_fps_smg_sr2_vg_standard",
		"wpn_fps_smg_sr2_s_unfolded"
	}
}

PickUpWeapons.weapon_table.mp9_titan = {
	id = "mp9",
	blueprint = {
		"wpn_fps_smg_mp9_body_mp9",
		"wpn_fps_smg_mp9_s_fold",
		"wpn_fps_smg_mp9_m_extended",
		"wpn_fps_smg_mp9_b_dummy"
	}
}

PickUpWeapons.weapon_table.mp9 = {
	blueprint = {
		"wpn_fps_smg_mp9_body_mp9",
		"wpn_fps_smg_mp9_s_fold",
		"wpn_fps_smg_mp9_m_extended",
		"wpn_fps_smg_mp9_b_dummy"
	}
}

PickUpWeapons.weapon_table.beretta92_titan = {
	id = "b92fs",
	blueprint = {
		"wpn_fps_pis_beretta_body_beretta",
		"wpn_fps_pis_beretta_b_std",
		"wpn_fps_pis_beretta_g_std",
		"wpn_fps_pis_beretta_m_std",
		"wpn_fps_pis_beretta_o_std",
		"wpn_fps_pis_beretta_sl_std",
		"wpn_fps_upg_ns_pis_medium",
		"wpn_fps_upg_fl_pis_tlr1"
		
	}
}

PickUpWeapons.weapon_table.r870_taser = {
	id = "ksg",
	blueprint = {
		"wpn_fps_sho_ksg_b_long",
		"wpn_fps_sho_ksg_body_standard",
		"wpn_fps_sho_ksg_fg_standard",
		"wpn_fps_upg_o_dd_rear"
	},
	cosmetics = {
		id = "color_yellow",
		quality = "mint",
		color_index = 3
	}
}

PickUpWeapons.weapon_table[("units/pd2_mod_lapd/weapons/wpn_npc_m416/wpn_npc_m416"):key()] = {
	id = "new_m4",
	blueprint = {
		"wpn_fps_m4_uupg_b_medium_vanilla",
		"wpn_fps_m4_uupg_fg_rail_ext_dummy",
		"wpn_fps_ass_tecci_dh_standard",
		"wpn_fps_ass_contraband_fg_standard",
		"wpn_fps_ass_tecci_g_standard",
		"wpn_fps_ass_tecci_upper_reciever_m4",
		"wpn_fps_ass_tecci_lower_reciever",
		"wpn_fps_amcar_bolt_standard",
		"wpn_fps_upg_m4_m_pmag",
		"wpn_fps_upg_m4_s_pts",
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_fl_ass_peq15",
		"wpn_fps_upg_vg_ass_smg_afg"--[[,
		"wpn_fps_ass_patriot_sounds"]]
	},
	offsets = {
		wpn_fps_upg_m4_m_pmag = {
			translation = Vector3(0, -0.0, 0)
		},
		wpn_fps_upg_m4_s_adapter = {
			translation = Vector3(0, 0.01, 0)
		},
		wpn_fps_upg_m4_s_pts = {
			translation = Vector3(0, 3, 0)
		},
		wpn_fps_upg_fl_ass_peq15 = {
			translation = Vector3(-2.8, 5.5, 3.4997),
			rotation = Rotation(0, 0, 270)
		},
		wpn_fps_upg_o_eotech = {
			translation = Vector3(0, 0, 0.6997)
		},
		wpn_fps_upg_vg_ass_smg_afg = {
			translation = Vector3(0, 3, 0.2388)
		}
	}	
}

PickUpWeapons.weapon_table.uzi = {
	blueprint = {
		"wpn_fps_smg_uzi_b_standard",
		"wpn_fps_smg_uzi_body_standard",
		"wpn_fps_smg_uzi_fg_rail",
		"wpn_fps_smg_uzi_g_standard",
		"wpn_fps_smg_uzi_m_standard",
		"wpn_fps_smg_uzi_s_unfolded",
		"wpn_fps_upg_ns_ass_smg_large",
		"wpn_fps_upg_o_eotech"
	}
}

PickUpWeapons.weapon_table.mpx = {
	id = "shepheard",
	blueprint = {
		"wpn_fps_smg_shepheard_b_standard",
		"wpn_fps_smg_shepheard_body",
		"wpn_fps_smg_shepheard_dh_standard",
		"wpn_fps_smg_shepheard_s_no",
		"wpn_fps_smg_shepheard_g_standard",
		"wpn_fps_smg_shepheard_bolt_standard",
		"wpn_fps_smg_shepheard_mag_standard",
		"wpn_fps_upg_o_cmore",
		"wpn_fps_upg_ns_ass_smg_small"
	}
}

PickUpWeapons.weapon_table.hk21_sc = {
	id = "hk21",
	blueprint = {
		"wpn_fps_lmg_hk21_b_short",
		"wpn_fps_lmg_hk21_body_lower",
		"wpn_fps_lmg_hk21_body_upper",
		"wpn_fps_lmg_hk21_fg_short",
		"wpn_fps_lmg_hk21_g_standard",
		"wpn_fps_lmg_hk21_m_standard",
		"wpn_fps_smg_mp5_s_adjust",
		"wpn_fps_upg_ns_ass_smg_firepig",
		"wpn_fps_upg_o_eotech_xps"
	}
}

PickUpWeapons.weapon_table.m60_bravo = {
	id = "par",
	blueprint = {
		"wpn_fps_lmg_svinet_b_standard",
		"wpn_fps_lmg_par_body_standard",
		"wpn_fps_lmg_par_m_standard",
		"wpn_fps_lmg_svinet_s_legend",
		"wpn_fps_lmg_par_upper_reciever"
	},
	cosmetics = {
		id = "color_white",
		quality = "mint",
		color_index = 7
	}
}

PickUpWeapons.weapon_table.m60_om = {
	id = "par",
	blueprint = {
		"wpn_fps_lmg_svinet_b_standard",
		"wpn_fps_lmg_par_body_standard",
		"wpn_fps_lmg_par_m_standard",
		"wpn_fps_lmg_svinet_s_legend",
		"wpn_fps_lmg_par_upper_reciever"
	}
}

PickUpWeapons.weapon_table.hk21_bravo = {
	id = "hk21",
	blueprint = {
		"wpn_fps_lmg_hk21_b_short",
		"wpn_fps_lmg_hk21_body_lower",
		"wpn_fps_lmg_hk21_body_upper",
		"wpn_fps_lmg_hk21_fg_short",
		"wpn_fps_lmg_hk21_g_standard",
		"wpn_fps_lmg_hk21_m_standard",
		"wpn_fps_smg_mp5_s_adjust",
		"wpn_fps_upg_ns_ass_smg_firepig",
		"wpn_fps_upg_o_eotech_xps"
	}
}

PickUpWeapons.weapon_table.m32 = {
	blueprint = {
		"wpn_fps_gre_m32_barrel",
		"wpn_fps_gre_m32_bolt",
		"wpn_fps_gre_m32_lower_reciever",
		"wpn_fps_gre_m32_mag",
		"wpn_fps_gre_m32_upper_reciever",
		"wpn_fps_upg_m4_s_ubr",
		"wpn_fps_upg_o_bmg"
	}
}

PickUpWeapons.weapon_table[("units/pd2_mod_reapers/weapons/wpn_npc_m32_large/wpn_npc_m32_large"):key()] = {
	id = "m32",
	blueprint = {
		"wpn_fps_gre_m32_barrel",
		"wpn_fps_gre_m32_bolt",
		"wpn_fps_gre_m32_lower_reciever",
		"wpn_fps_gre_m32_mag",
		"wpn_fps_gre_m32_upper_reciever",
		"wpn_fps_upg_m4_s_ubr"
	}
}

PickUpWeapons.weapon_table.mp5_cloak = {
	id = "new_mp5",
	blueprint = {
		"wpn_fps_smg_mp5_body_mp5",
		"wpn_fps_smg_mp5_fg_mp5a4",
		"wpn_fps_smg_mp5_m_straight",
		"wpn_fps_smg_mp5_s_adjust",
		"wpn_fps_upg_fl_pis_tlr1",
	},
	offsets = {
		wpn_fps_upg_fl_pis_tlr1 = {
			rotation = Rotation(0, 0, 90)
		}
	}
}