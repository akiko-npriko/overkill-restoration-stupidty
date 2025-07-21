Hooks:PostHook(WeaponFactoryTweakData, "init", "scar16paintf", function(self)

	for _, id in pairs(self.wpn_fps_ass_scar.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_ass_scar then
			stance_mod.wpn_fps_ass_scar16 = stance_mod.wpn_fps_ass_scar
		end
	end

	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_scar16 = {
				translation = Vector3(-1.6, 0, -10.4),
				rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_scar16 = {
				translation = Vector3(-1.6, 0, -10.4),
				rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_scar16 = {
				translation = Vector3(-1.6, 0, -10.4),
				rotation = Rotation(0, 0, -45)
	}

	self.parts.wpn_fps_upg_o_eotech_tan.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_scar)

	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_scar)
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_scar)	
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_scar)
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_scar)	

	if self.parts.wpn_fps_upg_o_cqb then --Vanilla Mod Pack

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_scar16 = {
			translation = Vector3(0, -8, -0.25),
			rotation = Rotation(0, 0, 0)			
		}

		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			
		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_ass_m4_s_russian")		
		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_ass_m4_g_sg")	
		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_m4_uupg_m_extend")	

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_scar16 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}
	
	end

	if self.parts.wpn_fps_m4_g_wrap then
	
		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_m4_g_wrap")
	
	end

	if self.parts.wpn_fps_upg_o_claymore then --Vanilla-Style Sights
	
		self.parts.wpn_fps_upg_o_claymore.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_scar)
		self.parts.wpn_fps_upg_o_katabatic.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_scar)	
		self.parts.wpn_fps_upg_o_ncstar_micro_1.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_scar)
		self.parts.wpn_fps_upg_o_northtac_ass.stance_mod.wpn_fps_ass_scar16 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_scar)

	end

	if self.parts.wpn_fps_ass_m16_m_soviet then 

		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_ass_m16_m_soviet")	
	
	end

	if self.parts.wpn_fps_ass_tecci_m_jungle_m4 then 

		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_ass_tecci_m_jungle_m4")	
		table.insert(self.wpn_fps_ass_scar16.uses_parts, "wpn_fps_upg_m4_s_mag")	
	
	end
	
	self.wpn_fps_ass_tecci.override = self.wpn_fps_ass_tecci.override or {}
	self.wpn_fps_ass_tecci.override.wpn_fps_ass_scar16_m_hamr = {
		stats = {
			extra_ammo = -25,
			concealment = 3,
			reload = 4,
			recoil = 2,
			spread = 2,
			damage = 5
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}

    self.wpn_fps_smg_x_olympic.override = self.wpn_fps_smg_x_olympic.override or {}
	self.wpn_fps_smg_x_olympic.override.wpn_fps_ass_scar16_m_hamr = {
		stats = {
			extra_ammo = 20,
			recoil = 1,
			spread = -1,
			concealment = -2,
			spread_moving = -2
		}
	}

    self.wpn_fps_smg_x_hajk.override = self.wpn_fps_smg_x_hajk.override or {}
	self.wpn_fps_smg_x_hajk.override.wpn_fps_ass_scar16_m_hamr = {
		stats = {
			extra_ammo = 20,
			recoil = 1,
			spread = -1,
			concealment = -2,
			spread_moving = -2
		}
	}
	
end)