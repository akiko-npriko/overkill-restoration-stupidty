Hooks:PostHook( WeaponFactoryTweakData, "init", "ar45stuff", function(self)

	for _, id in pairs(self.wpn_fps_smg_shepheard.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_smg_shepheard then
			stance_mod.wpn_fps_smg_ar45 = stance_mod.wpn_fps_smg_shepheard 
		end
	end

	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_shepheard)
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_shepheard)	
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_shepheard)
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_shepheard)	

	if self.parts.wpn_fps_upg_o_claymore then --Vanilla-Style Sights
	
		self.parts.wpn_fps_upg_o_claymore.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_shepheard)
		self.parts.wpn_fps_upg_o_katabatic.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_shepheard)	
		self.parts.wpn_fps_upg_o_ncstar_micro_1.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_shepheard)
		self.parts.wpn_fps_upg_o_northtac_ass.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_shepheard)

	end

	if self.parts.wpn_fps_smg_polymer_m_slim then --More Magazines for Guns that take Glock Magazines
	
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_smg_polymer_m_slim")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_smg_polymer_m_slim")

	end

	if self.parts.wpn_fps_smg_polymer_m_d50 then --V2

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_smg_polymer_m_d50")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_smg_polymer_m_d50")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_smg_polymer_m_speed")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_smg_polymer_m_speed")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_smg_polymer_m_cmag")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_smg_polymer_m_cmag")

		self.wpn_fps_smg_x_ar45.override = self.wpn_fps_smg_x_ar45.override or {}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_d50 = {
			stats = {
				concealment = -3,
				reload = -2,
				spread = 1,
				recoil = 1,
				extra_ammo = 20	
			}
		}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_cmag = {
			custom_stats = {
				ammo_offset = 140
			}
		}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_speed = {}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_slim = {}

		self.wpn_fps_smg_ar45.override = self.wpn_fps_smg_ar45.override or {}		
		self.wpn_fps_smg_ar45.override.wpn_fps_smg_polymer_m_speed = {}
		self.wpn_fps_smg_ar45.override.wpn_fps_smg_polymer_m_slim = {}
	
	end

	if self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot then --Vanilla Mod Pack

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m4_s_russian")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m4_m_stick")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_ass_m4_m_stick")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_smg_x_ar45.uses_parts, "wpn_fps_ass_m4_g_sg")

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_smg_ar45 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_shepheard)

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_ar45 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}
	
		self.wpn_fps_smg_ar45.override = self.wpn_fps_smg_ar45.override or {}
		self.wpn_fps_smg_ar45.override.wpn_fps_ass_m4_m_stick = {
			stats = {
				extra_ammo = 1,
				recoil = 3,
				spread = -4,
				damage = -3
			},
			custom_stats = {},
			a_obj = "a_m_2",
			override = {
				wpn_fps_smg_ar45_lower_standard = {
					unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_lower_reciever",
					third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_lower_reciever"
				}
			},
			forbids = {
				"wpn_fps_smg_ar45_lower_tan",
				"wpn_fps_upg_ar45_lower_custom",
				"wpn_fps_upg_ar45_lower_hera",
				"wpn_fps_smg_ar45_lower_milspec"
			}
		}

		self.wpn_fps_smg_x_ar45.override = self.wpn_fps_smg_x_ar45.override or {}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_ass_m4_m_stick = {
			stats = {
				extra_ammo = 2,
				recoil = 3,
				spread = -4,
				damage = -3
			},
			custom_stats = {},
			a_obj = "a_m_2",
			override = {
				wpn_fps_smg_ar45_lower_standard = {
					unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_lower_reciever",
					third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_lower_reciever"
				}
			},
			forbids = {
				"wpn_fps_smg_ar45_lower_tan",
				"wpn_fps_upg_ar45_lower_custom",
				"wpn_fps_upg_ar45_lower_hera",
				"wpn_fps_smg_ar45_lower_milspec"
			}
		}
		
		self.parts.wpn_fps_smg_ar45_ck_business.forbids = self.parts.wpn_fps_smg_ar45_ck_business.forbids or {}
		table.insert(self.parts.wpn_fps_smg_ar45_ck_business.forbids, "wpn_fps_ass_m4_m_stick")		
				
	end	

	if self.parts.wpn_fps_ass_tecci_s_minicontra then

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_tecci_s_minicontra")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m16_s_op")
	
	end

	if self.parts.wpn_fps_upg_m4_s_hera_paint then

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_tecci_s_wire")
		
		self.parts.wpn_fps_smg_ar45_ck_business.forbids = self.parts.wpn_fps_smg_ar45_ck_business.forbids or {}
		table.insert(self.parts.wpn_fps_smg_ar45_ck_business.forbids, "wpn_fps_upg_m4_s_hera_paint")				
	
	end

	if self.parts.wpn_fps_pis_czshadow_ns_sparrow then
	
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_pis_czshadow_ns_sparrow")
	
	end

	self.wpn_fps_smg_x_polymer.override.wpn_fps_smg_ar45_m_trans = {
		stats = {
			extra_ammo = -4,
			concealment = 2
		}
	}

	if self.parts.wpn_fps_upg_m_vecsgmt then --Tacticool Magazines
	
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_m_vecsgmt")
	
	end

	for k, used_part_id in ipairs(self.wpn_fps_smg_ar45.uses_parts) do
		if self.parts[used_part_id] and self.parts[used_part_id].type then
			if not table.contains(self.wpn_fps_smg_ar45.default_blueprint, used_part_id) then
				if self.parts[used_part_id].type == "barrel_ext" then
					table.insert(self.parts.wpn_fps_smg_ar45_fg_sd.forbids, used_part_id)
				end
			end
		end
	end

	self.wpn_fps_smg_ar45_npc.uses_parts = deep_clone(self.wpn_fps_smg_ar45.uses_parts)
	self.wpn_fps_smg_x_ar45_npc.uses_parts = deep_clone(self.wpn_fps_smg_x_ar45.uses_parts)

end)