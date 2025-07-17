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