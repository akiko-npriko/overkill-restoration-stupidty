Hooks:PostHook(WeaponFactoryTweakData, "init", "additionalpartsinit", function(self)
	
	-- vmp support
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_hera_lower")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_victor_lower")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_snp_tti_body_receiverlower_223")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_ass_tecci_upper_receiver_edge")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_s_magless")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_s_mag")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_upg_m4_s_retroslider")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_ass_sg416_fg_hera")
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_ass_contraband_fg_smr")

		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_ass_tecci_lower_paint")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_hera_lower")		
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_victor_lower")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_snp_tti_body_receiverlower_223")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_hera_upper")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_victor_upper")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_snp_tti_body_receiverupper_223")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_bdgr_b_loud")					
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_s_hera_paint")	
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_s_magless")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_s_mag")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_upg_m4_s_retroslider")

		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_ass_tecci_lower_paint")		
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_hera_lower")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_snp_tti_body_receiverlower_223")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_victor_lower")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_hera_upper")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_victor_upper")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_snp_tti_body_receiverupper_223")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_snp_tti_body_receiverupper_223")	
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_s_magless")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_m4_s_retroslider")

		table.insert(self.wpn_fps_smg_car9.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_smg_x_car9.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_smg_car9.uses_parts, "wpn_fps_ass_amcar_fg_dd")
		table.insert(self.wpn_fps_smg_x_car9.uses_parts, "wpn_fps_ass_amcar_fg_dd")
		table.insert(self.wpn_fps_smg_car9.uses_parts, "wpn_fps_ass_amcar_fg_vietnam")
		table.insert(self.wpn_fps_smg_x_car9.uses_parts, "wpn_fps_ass_amcar_fg_vietnam")
		table.insert(self.wpn_fps_smg_car9.uses_parts, "wpn_fps_upg_m4_s_magless")
		table.insert(self.wpn_fps_smg_x_car9.uses_parts, "wpn_fps_upg_m4_s_magless")		
		table.insert(self.wpn_fps_smg_car9.uses_parts, "wpn_fps_upg_m4_s_retroslider")
		table.insert(self.wpn_fps_smg_x_car9.uses_parts, "wpn_fps_upg_m4_s_retroslider")
	
		table.insert(self.wpn_fps_ass_spike.uses_parts, "wpn_fps_upg_ak_m_double")
		table.insert(self.wpn_fps_ass_spike.uses_parts, "wpn_fps_upg_ak_m_bakeband")
		table.insert(self.wpn_fps_ass_spike.uses_parts, "wpn_fps_upg_ak_m_basset")

		if self.parts.wpn_fps_ass_amcar_body_mark then

			self.parts.wpn_fps_ass_amcar_body_mark.forbids = self.parts.wpn_fps_ass_amcar_body_mark.forbids or {}
			table.insert(self.parts.wpn_fps_ass_amcar_body_mark.forbids, "wpn_fps_ass_tecci_m_jungle_m4")
			table.insert(self.parts.wpn_fps_ass_amcar_body_mark.forbids, "wpn_fps_upg_m4_s_hera_paint")

		end

		if self.parts.wpn_fps_ass_m4_body_dust then

			self.parts.wpn_fps_ass_m4_body_dust.forbids = self.parts.wpn_fps_ass_m4_body_dust.forbids or {}
			table.insert(self.parts.wpn_fps_ass_m4_body_dust.forbids, "wpn_fps_ass_tecci_m_jungle_m4")
			table.insert(self.parts.wpn_fps_ass_m4_body_dust.forbids, "wpn_fps_upg_m4_o_victor")
			table.insert(self.parts.wpn_fps_ass_m4_body_dust.forbids, "wpn_fps_upg_m4_s_hera_paint")

		end

		if self.parts.wpn_fps_ass_tecci_body_infinity then

			self.parts.wpn_fps_ass_tecci_body_infinity.forbids = self.parts.wpn_fps_ass_tecci_body_infinity.forbids or {}
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_upg_m4_hera_lower")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_upg_m4_victor_lower")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_snp_tti_body_receiverlower_223")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_ass_tecci_upper_receiver_edge")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_ass_tecci_vg_hera")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_ass_tecci_fg_contraband")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_upg_m4_s_hera_paint")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_ass_tecci_m_jungle")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_upg_m4_s_mag")
			table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_ass_tecci_fg_hera")			

		end

		if self.parts.wpn_fps_ass_ak_body_mamba then

			self.parts.wpn_fps_ass_ak_body_mamba.forbids = self.parts.wpn_fps_ass_ak_body_mamba.forbids or {}
			table.insert(self.parts.wpn_fps_ass_ak_body_mamba.forbids, "wpn_fps_upg_ak_body_magwell")
			table.insert(self.parts.wpn_fps_ass_ak_body_mamba.forbids, "wpn_fps_upg_akm_i_fast")

		end

		if self.parts.wpn_fps_ass_contraband_body_sayhello then

			self.parts.wpn_fps_ass_contraband_body_sayhello.override = self.parts.wpn_fps_ass_contraband_body_sayhello.override or {}
			self.parts.wpn_fps_ass_contraband_body_sayhello.override.wpn_fps_upg_m4_s_retroslider = { parent = "exclusive_set" }

			self.parts.wpn_fps_ass_contraband_body_sayhello.forbids = self.parts.wpn_fps_ass_contraband_body_sayhello.forbids or {}
			table.insert(self.parts.wpn_fps_ass_contraband_body_sayhello.forbids, "wpn_fps_ass_sg416_fg_hera")
			table.insert(self.parts.wpn_fps_ass_contraband_body_sayhello.forbids, "wpn_fps_ass_contraband_fg_smr")

			self.parts.wpn_fps_ass_contraband_body_mpx.forbids = self.parts.wpn_fps_ass_contraband_body_mpx.forbids or {}
			table.insert(self.parts.wpn_fps_ass_contraband_body_mpx.forbids, "wpn_fps_upg_m4_s_mag")
			table.insert(self.parts.wpn_fps_ass_contraband_body_mpx.forbids, "wpn_fps_ass_sg416_fg_hera")
			table.insert(self.parts.wpn_fps_ass_contraband_body_mpx.forbids, "wpn_fps_upg_m4_s_retroslider")
		
		end

	else
		-- vanilla mod pack not installed
	end

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods Legacy") then

		table.insert(self.wpn_fps_ass_aknato.uses_parts, "wpn_fps_upg_ak_s_rpk")
		table.insert(self.wpn_fps_ass_aknato.uses_parts, "wpn_upg_ak_s_folded")
		table.insert(self.wpn_fps_ass_aknato.uses_parts, "wpn_fps_ass_tecci_m_jungle_m4")
		table.insert(self.wpn_fps_ass_aknato.uses_parts, "wpn_fps_ass_ak_g_vityaz")
		table.insert(self.wpn_fps_ass_aknato.uses_parts, "wpn_fps_upg_ak_g_galil")

		self.parts.wpn_fps_upg_m4_s_hera_paint.forbids = self.parts.wpn_fps_upg_m4_s_hera_paint.forbids or {}
		table.insert(self.parts.wpn_fps_upg_m4_s_hera_paint.forbids, "wpn_fps_m4_g_wrap")
	
	else
		-- vanilla mod pack legacy not installed
	end

	-- Carl's DDM4
	if BeardLib.Utils:FindMod("gcar") then
		table.insert(self.wpn_fps_ass_gcar.uses_parts, "wpn_fps_ass_tecci_m_jungle")
		table.insert(self.wpn_fps_ass_gcar.uses_parts, "wpn_fps_ass_tecci_m_d60")
	
	else
		-- Carl's DDM4 not installed
	end

	-- Hybrid 7.62 support
	if BeardLib.Utils:FindMod("AR-47") then
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_m4_fg_hera")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_m4_fg_desert")

		self.wpn_fps_ass_ar47.override = self.wpn_fps_ass_ar47.override or {}
		self.wpn_fps_ass_ar47.override.wpn_fps_upg_m4_fg_hera = {
			forbids = table.list_add(self.parts.wpn_fps_upg_m4_fg_hera.forbids, {
				"wpn_fps_snp_victor_o_down"
			})
		}
		self.wpn_fps_ass_ar47.override.wpn_fps_upg_m4_fg_desert = {
			override = {
				wpn_fps_upg_ass_ar47_b_short = {
					a_obj = "a_b_smr"
				}
			}
		}
	else
		-- Hybrid 7.62 not installed
	end

	-- .410 AR-15
	if BeardLib.Utils:FindMod("AR-15 410 Shotgun") then
		table.insert(self.wpn_fps_shot_omni.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
	else
		-- .410 AR-15 not installed
	end

	for i, part_id in pairs(self.parts.wpn_fps_upg_m4_s_hera_paint.forbids) do
		if self.parts[part_id] and self.parts[part_id].type and self.parts[part_id].type == "stock" then
			self.parts.wpn_fps_upg_m4_s_hera_paint.forbids[i] = "dummy"
		end
	end  

	-- Future-proofing for Exclusive Set Pack
	if self.parts.wpn_fps_ass_m4_body_tantone then

		self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_m4_i_resmod")
			
	end

	if self.parts.wpn_fps_smg_olympic_body_hk416c then

		self.parts.wpn_fps_smg_olympic_body_hk416c.forbids = self.parts.wpn_fps_smg_olympic_body_hk416c.forbids or {}
		table.insert(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, "wpn_fps_upg_m4_b_victor_short")

	end

	if self.parts.wpn_fps_ass_ak_body_creedmoor then

		self.parts.wpn_fps_ass_ak_body_creedmoor.forbids = self.parts.wpn_fps_ass_ak_body_creedmoor.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_body_magwell")
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_akm_i_fast")

	end

	if self.parts.wpn_fps_snp_tti_body_hk417 then

		self.parts.wpn_fps_snp_tti_body_hk417.forbids = self.parts.wpn_fps_snp_tti_body_hk417.forbids or {}
		table.insert(self.parts.wpn_fps_snp_tti_body_hk417.forbids, "wpn_fps_snp_tti_m_sr")
		table.insert(self.parts.wpn_fps_snp_tti_body_hk417.forbids, "wpn_fps_snp_tti_m_sr_speed")
		table.insert(self.parts.wpn_fps_snp_tti_body_hk417.forbids, "wpn_fps_snp_tti_fg_victor")
		table.insert(self.parts.wpn_fps_snp_tti_body_hk417.forbids, "wpn_fps_upg_tti_fg_sr")

	end

	--Custom gasblocks
	self.parts.wpn_fps_snp_tti_fg_victor_gasblock = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
	self.parts.wpn_fps_snp_tti_fg_victor_gasblock.unit = "units/mods/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_b_standard_417"
	self.parts.wpn_fps_snp_tti_fg_victor_gasblock.third_unit = "units/mods/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_b_standard_417"
	self.parts.wpn_fps_snp_tti_fg_victor_gasblock.visibility = {
		{
			objects = {
				g_barrel = false,
			}
		}
	}

	self.parts.wpn_fps_upg_m4_fg_shepheard_gasblock = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
	self.parts.wpn_fps_upg_m4_fg_shepheard_gasblock.unit = "units/mods/weapons/wpn_fps_upg_m4_fg_shepheard/wpn_fps_upg_m4_fg_shepheard"
	self.parts.wpn_fps_upg_m4_fg_shepheard_gasblock.third_unit = "units/mods/weapons/wpn_fps_upg_m4_fg_shepheard/wpn_third_upg_m4_fg_shepheard"
	self.parts.wpn_fps_upg_m4_fg_shepheard_gasblock.visibility = {
		{
			objects = {
				g_fg = false,
				g_rails = false,
				g_black = false
			}
		}
	}

	self.parts.wpn_fps_ass_amcar_fg_vietnam.visibility = {
		{
			objects = {
				g_gas_block = false,
				g_ext = false
			}
		}
	}

	self.parts.wpn_fps_upg_m4_s_magless.visibility = {
		{
			objects = {
				g_standard_mag = false
			}
		}
	}

	self.parts.wpn_fps_upg_saiga_fg_rota.visibility = {
		{
			objects = {
				g_upperrail = false,
				g_rail_handguard = false
			}
		}
	}

	self.parts.wpn_fps_upg_saiga_fg_ak.visibility = {
		{
			objects = {
				g_upperrail = false,
				g_rail_handguard = false
			}
		}
	}

	self.parts.wpn_fps_upg_m16_fg_edge.visibility = {
		{
			objects = {
				g_gasblock = false
			}
		}
	}

	self.parts.wpn_fps_ass_sg416_fg_hera.visibility = {
		{
			objects = {
				g_cover = false
			}
		}
	}

	self.parts.wpn_fps_smg_vityaz_body_norail_rear.visibility = {
		{
			objects = {
				g_body = false,
				g_dustcover = false
			}
		}
	}

	self.parts.wpn_fps_snp_tti_m_sr.visibility = {
		{
			objects = {
				g_magpul = false
			}
		}
	}

	self.parts.wpn_fps_upg_tti_fg_sr_extra.visibility = {
		{
			objects = {
				g_rail = false
			}
		}
	}

	self.parts.wpn_fps_upg_m4_m_hk.visibility = {
		{
			objects = {
				g_m_2 = false,
				g_bullets_spare = false,
				g_holder = false
			}
		}
	}

--	self.parts.wpn_fps_snp_tti_fg_victor.adds = { "wpn_fps_snp_tti_fg_victor_gasblock" }	

	--Bullet Objects for mags

	self.parts.wpn_fps_upg_m4_m_shepheard.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 30
	}
	self.parts.wpn_fps_upg_ak_m_basset.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 2
	}
	self.parts.wpn_fps_upg_ak_m_bakeband.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 3
	}
	self.parts.wpn_fps_upg_m4_m_d60.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 6
	}
	self.parts.wpn_fps_m4_uupg_m_sharps.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 3
	}

	self.parts.wpn_fps_upg_m4_b_victor.forbids = self.parts.wpn_fps_upg_m4_b_victor.forbids or {}
	table.insert(self.parts.wpn_fps_upg_m4_b_victor.forbids, "wpn_fps_snp_tti_fg_victor_gasblock")

    self.wpn_fps_ass_amcar.adds.wpn_fps_upg_amcar_o_victor = deep_clone(self.wpn_fps_ass_amcar.adds.wpn_fps_upg_o_specter)

	self.parts.wpn_fps_upg_ak_fg_zenitco.forbids = self.parts.wpn_fps_upg_ak_fg_zenitco.forbids or {}
	table.insert(self.parts.wpn_fps_upg_ak_fg_zenitco.forbids, "wpn_fps_upg_ak_b_galil")
	table.insert(self.parts.wpn_fps_upg_ak_fg_zenitco.forbids, "wpn_fps_upg_ak_b_galil_bipod")

    self.parts.wpn_fps_m4_uupg_fg_lr300.override = self.parts.wpn_fps_m4_uupg_fg_lr300.override or {}
    self.parts.wpn_fps_m4_uupg_fg_lr300.override.wpn_fps_upg_m4_o_victor = {
        unit = "units/mods/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_o_victor",
        third_unit = "units/mods/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_o_victor",
    }

    self.parts.wpn_fps_m4_upg_fg_mk12.override = self.parts.wpn_fps_m4_upg_fg_mk12.override or {}
    self.parts.wpn_fps_m4_upg_fg_mk12.override.wpn_fps_upg_m4_o_victor = {
		a_obj = "a_o_2"
    }

	self.parts.wpn_fps_upg_ak_fg_vityaz.override = self.parts.wpn_fps_upg_ak_fg_vityaz.override or {}
	self.parts.wpn_fps_upg_ak_fg_vityaz.override.wpn_fps_ak_extra_ris = {
		a_obj = "a_o_krebs"
	}

    self.parts.wpn_fps_m4_uupg_fg_rail.override = self.parts.wpn_fps_m4_uupg_fg_rail.override or {}
    self.parts.wpn_fps_m4_uupg_fg_rail.override.wpn_fps_upg_m4_o_victor = {
        unit = "units/mods/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_o_victor",
        third_unit = "units/mods/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_o_victor",
    }

    self.parts.wpn_fps_upg_fg_smr.override = self.parts.wpn_fps_upg_fg_smr.override or {}
    self.parts.wpn_fps_upg_fg_smr.override.wpn_fps_upg_m4_b_victor_short = {
        unit = "units/mods/weapons/wpn_fps_ass_m4_pts/wpn_fps_upg_m4_b_victor_short_smr"
    }

	self.parts.wpn_fps_ass_tecci_fg_standard.forbids = self.parts.wpn_fps_ass_tecci_fg_standard.forbids or {}
	table.insert(self.parts.wpn_fps_ass_tecci_fg_standard.forbids, "wpn_fps_ass_tecci_vg_hera")  

	self.parts.wpn_fps_snp_victor_sbr_kit.forbids = self.parts.wpn_fps_snp_victor_sbr_kit.forbids or {}
	table.insert(self.parts.wpn_fps_snp_victor_sbr_kit.forbids, "wpn_fps_upg_victor_b_fluted")

    self.wpn_fps_smg_x_olympic.override = self.wpn_fps_smg_x_olympic.override or {}
	self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_d60 = {
		stats = {
			extra_ammo = 30,
			value = 3,
			recoil = 1,
			spread = -1,
			concealment = -3,
			spread_moving = -2
		}
	}
	self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_b_victor_short = {
		unit = "units/mods/weapons/wpn_fps_ass_amcar_pts/wpn_fps_upg_amcar_b_victor_short"
	}

	self.wpn_fps_smg_olympic.override = self.wpn_fps_smg_olympic.override or {}			
	self.wpn_fps_smg_olympic.override.wpn_fps_upg_m4_b_victor_short = {
		unit = "units/mods/weapons/wpn_fps_ass_amcar_pts/wpn_fps_upg_amcar_b_victor_short"
	}

	self.wpn_fps_ass_amcar.override = self.wpn_fps_ass_amcar.override or {}			
	self.wpn_fps_ass_amcar.override.wpn_fps_upg_m4_b_victor_short = {
		unit = "units/mods/weapons/wpn_fps_ass_amcar_pts/wpn_fps_upg_amcar_b_victor_short"
	}

    self.wpn_fps_smg_x_hajk.override = self.wpn_fps_smg_x_hajk.override or {}
	self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_d60 = {
		stats = {
			extra_ammo = 30,
			value = 3,
			recoil = 1,
			spread = -1,
			concealment = -3,
			spread_moving = -2
		}
	}

	self.wpn_fps_ass_contraband.override = self.wpn_fps_ass_contraband.override or {}			
	self.wpn_fps_ass_contraband.override.wpn_fps_ass_sg416_fg_hera = {
		forbids = {}
	}

--[[self.wpn_fps_ass_amcar.override = self.wpn_fps_ass_amcar.override or {}
	self.wpn_fps_ass_amcar.override.wpn_fps_m4_uupg_m_sharps = {
		stats = {
			extra_ammo = 5,
			damage = 3,
			recoil = -2,
			spread = 2,
			concealment = -2,
			reload = -2
		}
	}
	self.wpn_fps_ass_amcar.override.wpn_fps_upg_m4_m_shepheard = {
		stats = {
			extra_ammo = 5,
			recoil = 2,
			spread = -1,
			concealment = -1
		}
	}]]

    self.wpn_fps_ass_akm.override = self.wpn_fps_ass_akm.override or {}
	self.wpn_fps_ass_akm.override.wpn_fps_upg_ak_s_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
	}
	self.wpn_fps_ass_akm.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}
	self.wpn_fps_ass_akm.override.wpn_fps_upg_ak_fg_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_fg_74m_plum"
	}

    self.wpn_fps_smg_akmsu.override = self.wpn_fps_smg_akmsu.override or {}
	self.wpn_fps_smg_akmsu.override.wpn_fps_upg_ak_body_magwell = {
		adds = { "wpn_fps_smg_akmsu_body_lowerreceiver", "wpn_fps_ak_bolt" }
	}
	self.wpn_fps_smg_akmsu.override.wpn_fps_upg_ak_s_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
	}
	self.wpn_fps_smg_akmsu.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}
	
    self.wpn_fps_smg_x_akmsu.override = self.wpn_fps_smg_x_akmsu.override or {}
	self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_body_magwell = {
		adds = { "wpn_fps_smg_akmsu_body_lowerreceiver", "wpn_fps_ak_bolt" }
	}	
	self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_s_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
	}
	self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}

    self.wpn_fps_ass_akm_gold.override = self.wpn_fps_ass_akm_gold.override or {}
	self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_body_magwell = {
		adds = { "wpn_fps_ass_ak_body_lowerreceiver_gold", "wpn_fps_ak_bolt" }
	}
	self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_s_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
	}
	self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}
	self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_fg_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_fg_74m_plum"
	}

    self.wpn_fps_lmg_rpk.override = self.wpn_fps_lmg_rpk.override or {}
	self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_s_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
	}
	self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}
	self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_fg_74m_plum"
	}

    self.wpn_fps_ass_groza.override = self.wpn_fps_ass_groza.override or {}
	self.wpn_fps_ass_groza.override.wpn_fps_upg_ak_g_74m = {
		unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_g_74m_plum"
	}

    self.wpn_fps_sho_m590.override = self.wpn_fps_sho_m590.override or {}
	self.wpn_fps_sho_m590.override.wpn_fps_upg_m4_g_m590 = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_g_standard",
		third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_g_standard"
	}

	self.wpn_fps_smg_coal.override = self.wpn_fps_smg_coal.override or {}			
	self.wpn_fps_smg_coal.override.wpn_fps_smg_vityaz_g_smooth = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_g_standard",
		third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_g_standard"
	}

	self.wpn_fps_smg_x_coal.override = self.wpn_fps_smg_x_coal.override or {}			
	self.wpn_fps_smg_x_coal.override.wpn_fps_smg_vityaz_g_smooth = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_g_standard",
		third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_g_standard"
	}


	--Partial ResMod integration

	if self.parts.wpn_fps_ass_m4_os_frontsight and self.wpn_fps_ass_osipr then

		self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids = self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids or {}
		table.insert(self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids, "wpn_fps_ass_m4_os_frontsight")
	
	end

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "additionalpartsinit2", function(self)

--[[self.parts.wpn_fps_upg_m4_b_victor.override = self.parts.wpn_fps_upg_m4_b_victor.override or {}
    local wpn_fps_upg_m4_b_victor_parts_to_override = {
        "wpn_fps_upg_ns_ass_smg_large",
        "wpn_fps_upg_ns_ass_smg_medium",
        "wpn_fps_upg_ns_ass_smg_small",
        "wpn_fps_upg_ns_ass_smg_firepig",
        "wpn_fps_upg_ns_ass_smg_stubby",
        "wpn_fps_upg_ns_ass_smg_tank",
        "wpn_fps_upg_ass_ns_jprifles",
        "wpn_fps_upg_ass_ns_linear",
        "wpn_fps_upg_ass_ns_surefire",
        "wpn_fps_upg_ass_ns_battle",
        "wpn_fps_upg_ns_ass_pbs1",
        "wpn_fps_upg_ns_ass_smg_v6",
        "wpn_fps_lmg_hk51b_ns_jcomp",
        "wpn_fps_upg_ak_ns_jmac",
        "wpn_fps_upg_ak_ns_tgp",
        "wpn_fps_lmg_kacchainsaw_ns_suppressor",
        "wpn_fps_lmg_kacchainsaw_ns_muzzle",
        "wpn_fps_upg_ns_ass_smg_desertfox",
        "wpn_fps_snp_tti_ns_brake",
        "wpn_fps_snp_tti_ns_hex"
    }
    for _, part_id in pairs(wpn_fps_upg_m4_b_victor_parts_to_override) do
        if self.parts[part_id] then
            self.parts.wpn_fps_upg_m4_b_victor.override[part_id] = {
                forbids = {
                    "wpn_fps_upg_m4_b_victor_ns",
                    "wpn_fps_snp_victor_ns_standard"
                }
            }
        end
    end]]

	for i, part_id in ipairs(self.wpn_fps_ass_m4.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_upg_m4_b_victor.override[part_id] = {
					forbids = { "wpn_fps_snp_victor_ns_standard" }
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_ass_m4.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_upg_m4_b_victor_short.override[part_id] = {
					forbids = { "wpn_fps_snp_victor_ns_standard" }
				}
			end
		end
	end

	self.parts.wpn_fps_smg_vityaz_fg_wood.override = self.parts.wpn_fps_smg_vityaz_fg_wood.override or {}
	for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "gadget" then
				self.parts.wpn_fps_smg_vityaz_fg_wood.override[part_id] = {
					adds = { "wpn_fps_smg_vityaz_fg_wood_fl_rail"}
				}
			end
		end
	end
	self.parts.wpn_fps_smg_vityaz_fg_wood.override.wpn_fps_upg_fl_ass_peq15 = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}
	self.parts.wpn_fps_smg_vityaz_fg_wood.override.wpn_fps_upg_fl_ass_utg = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}

	self.parts.wpn_fps_smg_vityaz_fg_waffle.override = self.parts.wpn_fps_smg_vityaz_fg_waffle.override or {}
	for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "gadget" then
				self.parts.wpn_fps_smg_vityaz_fg_waffle.override[part_id] = {
					adds = { "wpn_fps_smg_vityaz_fg_wood_fl_rail"}
				}
			end
		end
	end
	self.parts.wpn_fps_smg_vityaz_fg_waffle.override.wpn_fps_upg_fl_ass_peq15 = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}
	self.parts.wpn_fps_smg_vityaz_fg_waffle.override.wpn_fps_upg_fl_ass_utg = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}

	self.parts.wpn_fps_smg_vityaz_fg_mp5.override = self.parts.wpn_fps_smg_vityaz_fg_mp5.override or {}
	for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "gadget" then
				self.parts.wpn_fps_smg_vityaz_fg_mp5.override[part_id] = {
					adds = { "wpn_fps_smg_vityaz_fg_wood_fl_rail"}
				}
			end
		end
	end
	self.parts.wpn_fps_smg_vityaz_fg_mp5.override.wpn_fps_upg_fl_ass_peq15 = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}
	self.parts.wpn_fps_smg_vityaz_fg_mp5.override.wpn_fps_upg_fl_ass_utg = {
		adds = { 
			"wpn_fps_upg_fl_ass_peq15_flashlight",
			"wpn_fps_smg_vityaz_fg_wood_fl_rail"
		}
	}

	for i, part_id in ipairs(self.wpn_fps_ass_74.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_upg_ak_fg_reversecombo.override[part_id] = {
					a_obj = "a_of"
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_ass_74.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_upg_ak_fg_74m.override[part_id] = {
					a_obj = "a_of"
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_ass_akm.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_upg_ak_fg_stg.override[part_id] = {
					a_obj = "a_of"
				}
			elseif self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_upg_ak_b_bars.override[part_id] = {
					forbids = { "wpn_fps_upg_ak_ns_bars" }
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_ass_akm_gold.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_upg_ak_b_ak103_paint.override[part_id] = {
					forbids = { "wpn_fps_upg_ak_ns_bars" }
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_smg_akmsu.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_smg_akmsu_fg_plastic.override[part_id] = {
					a_obj = "a_of"
				}
			end
		end
	end

	for i, part_id in ipairs(self.wpn_fps_smg_akmsu.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_smg_akmsu_fg_drgv.override[part_id] = {
					a_obj = "a_of"
				}
			end
		end
	end
	
	for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_smg_vityaz_body_norail.override[part_id] = {
					parent = "deeznuts",
					a_obj = "a_o_sm",
					override = {
						wpn_fps_smg_vityaz_o_scopemount_dummy = {
							adds = { 
								"wpn_fps_smg_vityaz_o_scopemount" 
							}--[[,
							stance_mod = {
								wpn_fps_smg_vityaz = {
									translation = Vector3(-0.0, 2.6962, -0.7448)
								}
							}]]
						},
						wpn_fps_upg_o_atibal_reddot = {
							parent = "deeznuts",
							a_obj = "a_o_sm"
						},
						wpn_fps_upg_o_hamr_reddot = {
							parent = "deeznuts",
							a_obj = "a_o_sm"									
						}
					}
				}
			end
		end
	end

	if not restoration then

		for k, used_part_id in ipairs(self.wpn_fps_ass_amcar.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
				if not table.contains(self.wpn_fps_ass_amcar.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "barrel_ext" or
					 self.parts[used_part_id].type == "barrel" then
						table.insert(self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids, used_part_id )
					end
				end
			end
		end

	end

	for k, used_part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
		if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
			if not table.contains(self.wpn_fps_smg_olympic.default_blueprint, used_part_id) then
				if self.parts[used_part_id].type == "barrel_ext" or
				 self.parts[used_part_id].type == "barrel" then
					table.insert(self.parts.wpn_fps_smg_olympic_fg_mp5sd.forbids, used_part_id )
				end
			end
		end
	end

	if BeardLib.Utils:FindMod("Weapon Texture Reworks") then	

		self.parts.wpn_fps_upg_m16_os_victor_frontsight.unit = "units/mods/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_os_victor_gsma"
		self.parts.wpn_fps_smg_olympic_fg_n23.unit = "units/mods/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_fg_n23_gsma"

	end

end)