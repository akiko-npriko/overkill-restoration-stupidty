Hooks:PostHook(WeaponFactoryTweakData, "init", "dd5paintf", function(self)

	for _, id in pairs(self.wpn_fps_ass_m16.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_ass_m16 then
			stance_mod.wpn_fps_ass_dd5 = stance_mod.wpn_fps_ass_m16 
		end
	end

	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_dd5 = {
				translation = Vector3(-3.6, 0, -9.2),
				rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_dd5 = {
				translation = Vector3(-3.6, 0, -9.2),
				rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_dd5 = {
				translation = Vector3(-3.6, 0, -9.2),
				rotation = Rotation(0, 0, -45)
	}

	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_m16)
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_m16)	
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_m16)
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_m16)	

	if self.parts.wpn_fps_upg_o_cqb then --Vanilla Mod Pack

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_dd5 = {
			translation = Vector3(0, -3.5, -0.12),
			rotation = Rotation(0, 0, 0)			
		}

		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_ass_m4_s_russian")		
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_ass_tecci_s_minicontra")		

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_dd5 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}
	
	end

	if self.parts.wpn_fps_m4_g_wrap then
	
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_m4_g_wrap")
	
	end

	if self.parts.wpn_fps_upg_o_claymore then --Vanilla-Style Sights
	
		self.parts.wpn_fps_upg_o_claymore.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_m16)
		self.parts.wpn_fps_upg_o_katabatic.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_m16)	
		self.parts.wpn_fps_upg_o_ncstar_micro_1.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_m16)
		self.parts.wpn_fps_upg_o_northtac_ass.stance_mod.wpn_fps_ass_dd5 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_m16)

		self.parts.wpn_fps_upg_o_northtac_ass.forbids = self.parts.wpn_fps_upg_o_northtac_ass.forbids or {}
		table.insert(self.parts.wpn_fps_upg_o_northtac_ass.forbids, "wpn_fps_ass_dd5_o_dd_extra")

	end

	if self.parts.wpn_fps_upg_m_308pmag then --Tacticool Magazines

		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_m_308pmag")
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_m_kac10")
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_m_308dmmag")		
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_m_kac20")	
	
	end

	if self.parts.wpn_fps_upg_o_handle_ar45 then --SBR .45
	
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_o_handle_ar45")
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_upg_o_mbus_pro_ar45")
		table.insert(self.wpn_fps_ass_dd5.uses_parts, "wpn_fps_smg_ar45_fg_long")

		self.parts.wpn_fps_smg_ar45_fg_long.forbids = self.parts.wpn_fps_smg_ar45_fg_long.forbids or {}
		table.insert(self.parts.wpn_fps_smg_ar45_fg_long.forbids, "wpn_fps_ass_dd5_b_short")
		
		self.parts.wpn_fps_upg_o_mbus_pro_ar45.forbids = self.parts.wpn_fps_upg_o_mbus_pro_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_upg_o_mbus_pro_ar45.forbids, "wpn_fps_ass_dd5_o_dd_extra")

		self.parts.wpn_fps_upg_o_handle_ar45.forbids = self.parts.wpn_fps_upg_o_handle_ar45.forbids or {}
		table.insert(self.parts.wpn_fps_upg_o_handle_ar45.forbids, "wpn_fps_ass_dd5_o_dd_extra")

		self.parts.wpn_fps_upg_o_mbus_pro_ar45.stance_mod.wpn_fps_ass_dd5 = {
			translation = Vector3(0, -8, -0),
			rotation = Rotation(0, 0, 0)			
		}

		self.wpn_fps_ass_dd5.override = self.wpn_fps_ass_dd5.override or {}
		self.wpn_fps_ass_dd5.override.wpn_fps_upg_o_mbus_pro_ar45 = {
			override = {
				wpn_fps_upg_o_mbus_pro_front = {
					unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_fps_upg_o_mbus_pro_front",
					third_unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_third_upg_o_mbus_pro_front",
					a_obj = "a_o_front"
				},
				wpn_fps_upg_o_mbus_pro_rear = {
					unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_fps_upg_o_mbus_pro_rear",
					third_unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_third_upg_o_mbus_pro_rear",
					a_obj = "a_o_rear"				
				}
			}
		}
		self.wpn_fps_ass_dd5.override.wpn_fps_smg_ar45_fg_long = {
			override = {
				wpn_fps_upg_o_mbus_pro_ar45 = {
					override = {
						wpn_fps_upg_o_mbus_pro_front = {
							unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_fps_upg_o_mbus_pro_front",
							third_unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_third_upg_o_mbus_pro_front",
							a_obj = "a_o_front",
							parent = "foregrip"
						},
						wpn_fps_upg_o_mbus_pro_rear = {
							unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_fps_upg_o_mbus_pro_rear",
							third_unit = "units/mods/weapons/wpn_fps_upg_o_mbus_pro_ar45/wpn_third_upg_o_mbus_pro_rear",
							a_obj = "a_o_rear"				
						}
					}
				},
				wpn_fps_upg_o_dd_front = {
					parent = "foregrip"
				}
			}
		}
	
	end
	
end)