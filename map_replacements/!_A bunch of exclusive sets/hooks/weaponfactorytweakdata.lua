Hooks:PostHook(WeaponFactoryTweakData, "init", "byakurenhijiriyes", function(self)

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then

		self.parts.wpn_fps_ass_amcar_body_ddm4.forbids = self.parts.wpn_fps_ass_amcar_body_ddm4.forbids or {}
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_ass_amcar_fg_cylinder")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_ass_amcar_fg_covers_base")
	
		self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_uupg_m4_fg_victorcar")  		

		self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_body_long") 

		self.parts.wpn_fps_smg_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_shepheard_body_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_body_long") 

		self.parts.wpn_fps_smg_shepheard_body_centi.forbids = self.parts.wpn_fps_smg_shepheard_body_centi.forbids or {}
		table.insert(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, "wpn_fps_smg_shepheard_body_long") 
		
		self.parts.wpn_fps_ass_m16_body_mcbravo.forbids = self.parts.wpn_fps_ass_m16_body_mcbravo.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_ass_m16_fg_smooth")  		
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_ass_m16_s_op")  	

		self.parts.wpn_fps_ass_ak_body_creedmoor.forbids = self.parts.wpn_fps_ass_ak_body_creedmoor.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_upg_ak_m_slick") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_upg_ak_m_tiny") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_ass_ak_m_proto") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_ass_ak_fg_waffle") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_s_empty") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_s_polymerstock") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_ass_74_upper_receiver_bump") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_sho_saiga_upper_receiver_smooth") 

		self.parts.wpn_fps_ass_akm_body_tacticool.forbids = self.parts.wpn_fps_ass_akm_body_tacticool.forbids or {}
		table.insert(self.parts.wpn_fps_ass_akm_body_tacticool.forbids, "wpn_fps_ass_ak_fg_waffle") 
		table.insert(self.parts.wpn_fps_ass_akm_body_tacticool.forbids, "wpn_fps_ass_74_upper_receiver_bump") 
		table.insert(self.parts.wpn_fps_ass_akm_body_tacticool.forbids, "wpn_fps_sho_saiga_upper_receiver_smooth") 

		self.parts.wpn_fps_ass_scar_body_hamr.forbids = self.parts.wpn_fps_ass_scar_body_hamr.forbids or {}
		table.insert(self.parts.wpn_fps_ass_scar_body_hamr.forbids, "wpn_fps_ass_scar_m_extended") 

		self.parts.wpn_fps_smg_sterling_body_pdw.forbids = self.parts.wpn_fps_smg_sterling_body_pdw.forbids or {}
		table.insert(self.parts.wpn_fps_smg_sterling_body_pdw.forbids, "wpn_fps_smg_sterling_b_poke") 

		self.parts.wpn_fps_ass_m14_body_ac556.forbids = self.parts.wpn_fps_ass_m14_body_ac556.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m14_body_ac556.forbids, "wpn_fps_ass_m14_body_old") 
		table.insert(self.parts.wpn_fps_ass_m14_body_ac556.forbids, "wpn_fps_ass_m14_m_curve") 

	end


	if self.parts.wpn_fps_smg_shepheard_g_ergo then

		self.parts.wpn_fps_smg_shepheard_body_ar45.override = self.parts.wpn_fps_smg_shepheard_body_ar45.override or {}
		self.parts.wpn_fps_smg_shepheard_body_ar45.override.wpn_fps_smg_shepheard_g_ergo = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			adds = { "wpn_fps_snp_tti_vg_standard", "wpn_fps_upg_m4_g_standard_vanilla" }
		}
		
		self.parts.wpn_fps_smg_x_shepheard_body_ar45.override = self.parts.wpn_fps_smg_x_shepheard_body_ar45.override or {}
		self.parts.wpn_fps_smg_x_shepheard_body_ar45.override.wpn_fps_smg_shepheard_g_ergo = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			adds = { "wpn_fps_snp_tti_vg_standard", "wpn_fps_upg_m4_g_standard_vanilla" }
		}

		self.parts.wpn_fps_smg_shepheard_body_centi.override = self.parts.wpn_fps_smg_shepheard_body_centi.override or {}
		self.parts.wpn_fps_smg_shepheard_body_centi.override.wpn_fps_smg_shepheard_g_ergo = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			adds = { "wpn_fps_sho_sko12_body_grip" }
		}
		
	end

	if self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot then

		self.parts.wpn_fps_ass_ak_body_creedmoor.override = self.parts.wpn_fps_ass_ak_body_creedmoor.override or {}
		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_fps_upg_fl_ass_smg_sho_pointshoot = {
			stance_mod = {
				wpn_fps_ass_74 = {
					translation = Vector3(-4, -20, -13),
					rotation = Rotation(0, 0, -35)
				}
			}
		}
		
		self.parts.wpn_fps_ass_akm_body_tacticool.override = self.parts.wpn_fps_ass_akm_body_tacticool.override or {}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_fl_ass_smg_sho_pointshoot = {
			stance_mod = {
				wpn_fps_ass_74 = {
					translation = Vector3(-4, -20, -13),
					rotation = Rotation(0, 0, -35)
				}
			}
		}
		
	end

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods Legacy") then
	
		self.parts.wpn_fps_ass_amcar_body_ddm4.forbids = self.parts.wpn_fps_ass_amcar_body_ddm4.forbids or {}
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_m4_g_wrap")

		self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_m4_g_wrap")
	
	else
		-- vanilla mod pack legacy not installed
	end

	if SystemFS:exists("assets/mod_overrides/MPX (Signature SMG) Skin Pack/Hooks/mpx-tweak.lua") then
	
		self.parts.wpn_fps_smg_shepheard_body_ar45.stats = {
			total_ammo_mod = -5,
			damage = 35,
			spread = 2,
			reload = -5,
			recoil = -3,
			concealment = -2
		}
		self.parts.wpn_fps_smg_shepheard_body_ar45.custom_stats = {
			fire_rate_multiplier = 0.85058823529,
			ammo_pickup_min_mul = 0.35,
			ammo_pickup_max_mul = 0.52428571428,
			ammo_offset = 10
		}

	end

	if BeardLib.Utils:FindMod("AR AK Mods") then

	self.parts.wpn_fps_ass_amcar_body_ddm4.forbids = self.parts.wpn_fps_ass_amcar_body_ddm4.forbids or {}
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_upg_ass_amcar_fg_mp5a5")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_upg_amcar_b_medium")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_ass_amcar_gasblock")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_upg_amcar_i_resmod")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.parts.wpn_fps_ass_amcar_body_ddm4.forbids, "wpn_fps_ass_amcar_gasblock")

	self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_ass_amcar_fg_mp5a5")
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_amcar_b_medium")
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_ass_amcar_gasblock")
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_amcar_i_resmod")
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_m4_o_victor")

	self.parts.wpn_fps_ass_ak_body_creedmoor.forbids = self.parts.wpn_fps_ass_ak_body_creedmoor.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_s_asval") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m4_s_contender_normal") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_upg_ak_s_folded") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_ass_hera_s_russian") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_m_nato") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_ass_hera_s_russian") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_m_bakeband") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_m_double") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_upg_ak_fg_saiga_ultimak") 		
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_ak_fg_galil") 

	self.parts.wpn_fps_ass_akm_body_tacticool.forbids = self.parts.wpn_fps_ass_akm_body_tacticool.forbids or {}
		table.insert(self.parts.wpn_fps_ass_akm_body_tacticool.forbids, "wpn_upg_ak_fg_saiga_ultimak") 		
		table.insert(self.parts.wpn_fps_ass_akm_body_tacticool.forbids, "wpn_fps_upg_ak_fg_galil") 

	else
		-- AR/AK mods not installed
	end
	
	if self.parts.wpn_fps_upg_m4_i_resmod then

		self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_upg_m4_i_resmod")
			
	end

	if self.parts.wpn_fps_upg_m_dura and not restoration then	-- fuck

		self.parts.wpn_fps_ass_m16_body_mcbravo.forbids = self.parts.wpn_fps_ass_m16_body_mcbravo.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_dura")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_d60")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_p10")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_p20")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_p30")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_p30w")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_p40")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_battle")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_poly")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_hksteel")
		table.insert(self.parts.wpn_fps_ass_m16_body_mcbravo.forbids, "wpn_fps_upg_m_gen2")	

		self.parts.wpn_fps_smg_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_shepheard_body_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx20") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx30") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxdrum") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxtti") 

		self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx20") 
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx30") 
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxdrum") 
		table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxtti") 

		self.parts.wpn_fps_smg_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_shepheard_body_centi.forbids or {}
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx20") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpx30") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxdrum") 
		table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_upg_m_mpxtti") 

		self.parts.wpn_fps_ass_ak_body_creedmoor.forbids = self.parts.wpn_fps_ass_ak_body_creedmoor.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_plum") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_10rs") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_45r") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_rpk45") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_545pmag") 
		table.insert(self.parts.wpn_fps_ass_ak_body_creedmoor.forbids, "wpn_fps_upg_m_rpkd") 
	
	end
	
		-- Start of actual stuff

	self.parts.wpn_fps_ass_amcar_body_ddm4.override = self.parts.wpn_fps_ass_amcar_body_ddm4.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_amcar.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_ass_amcar_body_ddm4.override[part_id] = {
					forbids = { "wpn_fps_smg_shepheard_ns_standard" }
				}
			end
		end
	end

	self.parts.wpn_fps_ass_ak_body_creedmoor.override = self.parts.wpn_fps_ass_ak_body_creedmoor.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_74.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_ass_m4_body_tantone.override[part_id] = {
					forbids = { "wpn_fps_smg_vityaz_ns_standard" }
				}
			end
		end
	end

	self.parts.wpn_fps_ass_m4_body_tantone.override = self.parts.wpn_fps_ass_m4_body_tantone.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_m4.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_ass_m4_body_tantone.override[part_id] = {
					forbids = { "wpn_fps_ass_m4_ns_tantone" }
				}
			end
		end
	end

	self.parts.wpn_fps_smg_olympic_body_hk416c.override = self.parts.wpn_fps_smg_olympic_body_hk416c.override or {}
	for i, part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
					forbids = { "wpn_fps_ass_tecci_ns_standard" }
				}
			end
		end
	end

	self.parts.wpn_fps_ass_s552_body_s550.override = self.parts.wpn_fps_ass_s552_body_s550.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_s552.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "barrel_ext" then
				self.parts.wpn_fps_ass_s552_body_s550.override[part_id] = {
					forbids = { "wpn_fps_ass_s552_ns_s550" }
				}
			end
		end
	end

--[[self.parts.wpn_fps_ass_m14_body_ac556.override = self.parts.wpn_fps_ass_m14_body_ac556.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_m14.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_ass_m14_body_ac556.override[part_id] = {
					override = { 
						wpn_fps_ass_m14_ac556_mount_blocker = {
							adds = { "wpn_fps_ass_m14_ac556_mount" }
						}
					}
				}
			end
		end
	end

	self.parts.wpn_fps_ass_m14_body_ac556.override = self.parts.wpn_fps_ass_m14_body_ac556.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_m14.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "sight" then
				self.parts.wpn_fps_ass_m14_body_ac556.override[part_id] = {
					forbids = { "wpn_fps_ass_m14_ac556_mount_blocker" }
				}
			end
		end
	end]]

	for part_id, i in pairs(self.parts) do
		if self.parts[part_id] and self.parts[part_id].type and self.parts[part_id].type == "charm" then
			self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
				parent = "exclusive_set",
				a_obj = "a_charm"
			}
		end
	end

--[[self.parts.wpn_fps_ass_contraband_body_little.override = self.parts.wpn_fps_ass_contraband_body_little.override or {}
	for i, part_id in ipairs(self.wpn_fps_ass_contraband.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type then
			if self.parts[part_id].type == "grip" then
				self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
					parent = "exclusive_set",
					a_obj = "a_g"
				}
			elseif self.parts[part_id].type == "foregrip" then
				self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
					parent = "exclusive_set",
					a_obj = "a_fg"
				}
			elseif self.parts[part_id].type == "barrel" then
				self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
					parent = "exclusive_set",
					a_obj = "a_fg"
				}
			elseif self.parts[part_id].type == "stock" then
				self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
					parent = "exclusive_set",
					a_obj = "a_s"
				}
			end
		end
	end]]

	self.parts.wpn_fps_ass_tecci_gasblock.visibility = {
		{
			objects = {
				g_barrel = false
			}
		}
	}
	self.parts.wpn_fps_ass_scar_body_hamr_o_lmg.visibility = {
		{
			objects = {
				g_ironsight = false
			}
		}
	}
	self.parts.wpn_fps_ass_akm_fg_railcover_gadget.visibility = {
		{
			objects = {
				g_rail = false,
				g_rail_right = true
			}
		}
	}
	self.parts.wpn_fps_ass_m14_ac556_mount.visibility = {
		{
			objects = {
				g_ruger = false,
				g_ruger_rail = true,
				g_side_rail = false
			}
		}
	}
	self.parts.wpn_fps_ass_m14_ac556_mount_secondsight.visibility = {
		{
			objects = {
				g_ruger = false,
				g_ruger_rail = true,
				g_side_rail = false
			}
		}
	}
	self.parts.wpn_fps_ass_akm_body_tacticool.visibility = {
		{
			objects = {
				g_upperreceiver = false
			}
		}
	}
	self.parts.wpn_fps_ass_contraband_frontsight_down.visibility = {
		{
			objects = {
				g_flipup = false,
				g_flipdown = true,
			}
		}
	}

-- Akimbo versions of certain exclusive sets

    self.wpn_fps_smg_x_olympic.override = self.wpn_fps_smg_x_olympic.override or {}	
	self.wpn_fps_smg_x_olympic.override.wpn_fps_smg_olympic_body_hk416c = {
		stats = {
			damage = 25,
			recoil = -5,
			spread = -3,
			concealment = 1,
			total_ammo_mod = -8
		}
	}
    self.wpn_fps_smg_x_mac10.override = self.wpn_fps_smg_x_mac10.override or {}	
	self.wpn_fps_smg_x_mac10.override.wpn_fps_smg_mac10_body_m4_v2 = {
		stats = {
			damage = 44,
			recoil = -4,
			concealment = -3,
			total_ammo_mod = -4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.75,
			ammo_pickup_max_mul = 0.75
		}
	}	

    self.wpn_fps_x_1911.override = self.wpn_fps_x_1911.override or {}	
	self.wpn_fps_x_1911.override.wpn_fps_pis_1911_body_sporty = {
		stats = {
			reload = 2,
			recoil = -5,
			spread = 3,
			concealment = -2,
			zoom = 0
		},
		custom_stats = {
			fire_rate_multiplier = 1.5
		}
	}	

    self.wpn_fps_smg_x_sterling.override = self.wpn_fps_smg_x_sterling.override or {}	
	self.wpn_fps_smg_x_sterling.override.wpn_fps_smg_sterling_body_pdw = {
		custom_stats = {
			ammo_offset = 28,
			ammo_pickup_min_mul = 1.60142348754,
			ammo_pickup_max_mul = 1.5625,
			fire_rate_multiplier = 1.19565217391
		},
		adds = {
			"wpn_fps_smg_x_sterling_pdw_sound",
			"wpn_fps_m4_upg_ns_mk12"
		}
	}	

    self.wpn_fps_smg_x_shepheard.override = self.wpn_fps_smg_x_shepheard.override or {}	
	self.wpn_fps_smg_x_shepheard.override.wpn_fps_smg_shepheard_body_centi = {
		stats = {
			damage = 5,
			spread = 4,
			reload = -2,
			recoil = -5,
			concealment = -3,
			extra_ammo = 10
		}
	}
	
end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "reanimsset", function(self)

	--Old G3 anims
	if SystemFS:exists("assets/mod_overrides/old g3 animation") and not restoration then

		self.parts.wpn_fps_ass_g3_body_hk33.override = self.parts.wpn_fps_ass_g3_body_hk33.override or {}
		self.parts.wpn_fps_ass_g3_body_hk33.override.wpn_fps_ass_g3_m_mag = {
			unit = "units/mods/weapons/wpn_fps_ass_g3_hk33/wpn_fps_ass_g3_m_hk33_old",
			third_unit="units/mods/weapons/wpn_third_ass_g3_hk33/wpn_third_ass_g3_m_hk33"
		}
		self.parts.wpn_fps_ass_g3_body_hk33.override.wpn_fps_ass_g3_fg_bipod = {
			unit = "units/mods/weapons/wpn_fps_ass_g3_hk33/wpn_fps_ass_g3_fg_hk33_old",
			third_unit = "units/mods/weapons/wpn_third_ass_g3_hk33/wpn_third_ass_g3_fg_hk33",
			parent = "exclusive_set",
			a_obj = "a_fg_hk33"
		}

	end

	--Apex G7 anims
	if BeardLib.Utils:FindMod("Apex M308 Reload") then

		self.parts.wpn_fps_ass_m14_body_ac556.override = self.parts.wpn_fps_ass_m14_body_ac556.override or {}
		self.parts.wpn_fps_ass_m14_body_ac556.override.wpn_fps_ass_m14_body_upper = {
			unit = "units/mods/weapons/wpn_fps_ass_m14_ac556_g7/wpn_fps_ass_m14_base_ac556_g7",
			third_unit="units/mods/weapons/wpn_third_ass_m14_ac556/wpn_third_ass_m14_base_ac556"
		}
		self.parts.wpn_fps_ass_m14_body_ac556.override.wpn_fps_ass_m14_m_standard = {
			unit = "units/mods/weapons/wpn_fps_ass_m14_ac556_g7/wpn_fps_ass_m14_m_ac556_g7",
			third_unit = "units/mods/weapons/wpn_third_ass_m14_ac556/wpn_third_ass_m14_m_ac556"
		}
		
	end

	--PlayBONK's SCAR anims
	if BeardLib.Utils:FindMod("New Eagle Heavy Reload Animations Compatibility")  then

		self.parts.wpn_fps_ass_scar_body_hamr.override = self.parts.wpn_fps_ass_scar_body_hamr.override or {}
		self.parts.wpn_fps_ass_scar_body_hamr.override.wpn_fps_ass_scar_body_standard = {
			unit = "units/mods/weapons/wpn_fps_ass_scar_hamr_pb/wpn_fps_ass_scar_body_hamr_pb",
			third_unit="units/mods/weapons/wpn_third_ass_scar_hamr/wpn_third_ass_scar_body_hamr"
		}
		self.parts.wpn_fps_ass_scar_body_hamr.override.wpn_fps_ass_scar_m_standard = {
			unit = "units/mods/weapons/wpn_fps_ass_scar_hamr_pb/wpn_fps_ass_scar_m_hamr_pb",
			third_unit = "units/mods/weapons/wpn_third_ass_scar_hamr/wpn_third_ass_scar_m_hamr"
		}
	
	end

	--North Star Reload Animations Switch
	if SystemFS:exists("assets/mod_overrides/North Star Reload Animations Switch")  then

		self.parts.wpn_fps_snp_victor_body_ar15.override = self.parts.wpn_fps_snp_victor_body_ar15.override or {}
		self.parts.wpn_fps_snp_victor_body_ar15.override.wpn_fps_snp_victor_m_1 = {
			unit = "units/mods/weapons/wpn_fps_snp_victor_ar15_swapped/wpn_fps_snp_victor_m_ar15_1_swapped",
			third_unit="units/mods/weapons/wpn_third_snp_victor_ar15/wpn_third_snp_victor_m_ar15"
		}
		self.parts.wpn_fps_snp_victor_body_ar15.override.wpn_fps_snp_victor_m_2 = {
			unit = "units/mods/weapons/wpn_fps_snp_victor_ar15_swapped/wpn_fps_snp_victor_m_ar15_2_swapped",
			third_unit = "units/mods/weapons/wpn_third_snp_victor_ar15/wpn_third_snp_victor_m_ar15"
		}
		self.parts.wpn_fps_snp_victor_body_ar15.override.wpn_fps_snp_victor_bolt_standard = {
			unit = "units/mods/weapons/wpn_fps_snp_victor_ar15_swapped/wpn_fps_snp_victor_bolt_ar15_swapped"
		}
	
	end

end)