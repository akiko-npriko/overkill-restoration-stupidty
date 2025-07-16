Hooks:PostHook(WeaponFactoryTweakData, "init", "sg556_sightalignment_paint", function(self)

	if not restoration then

		for _, id in pairs(self.wpn_fps_ass_s556.uses_parts) do
			local part = self.parts[id]
			local stance_mod = part and part.stance_mod

			if stance_mod and stance_mod.wpn_fps_ass_s556 then
				stance_mod.wpn_fps_ass_s556 = stance_mod.wpn_fps_ass_s552
			end
		end

	end
	
end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "sg556paint", function(self)
	
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-3.3, 0, -11.0),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-3.3, 0, -11.0),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-3.3, 0, -11.0),
		rotation = Rotation(0, 0, -45)
	}

--[[self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-2.4, 0, -12.6),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-2.4, 0, -12.6),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_s556 = {
		translation = Vector3(-2.4, 0, -12.6),
		rotation = Rotation(0, 0, -45)
	}]]


	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_s552)
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_s552)	
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_s552)
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_s552)	

	self.parts.wpn_fps_ass_s556_b_short.visibility = {
		{
			objects = {
				g_flashhider = false
			}
		}
	}

	self.parts.wpn_fps_ass_s556_g_xi.visibility = {
		{
			objects = {
				g_marksman = false
			}
		}
	}

	if self.parts.wpn_fps_upg_o_cqb then --Vanilla Mod Pack

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_s556 = {
			translation = Vector3(-0.08, -3.5, -2.1),
			rotation = Rotation(0, 0, 0)			
		}

		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_s552_s_sniper")			
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_s552_g_sniper")		
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_s552_o_custom")
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_m4_s_russian")		
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")		
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_m4_uupg_m_extend")				
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_snp_sgs_s_sniper")		
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_snp_sgs_g_black")	

		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_s_solid")	
		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_g_ergo")	
		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_s_ctr")	
		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_s_mk20")	
		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_g_xi")	
		table.insert(self.wpn_fps_snp_sgs.uses_parts, "wpn_fps_ass_s556_g_sniper")	
		
		self.parts.wpn_fps_ass_s552_o_custom.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_ass_s552_o_custom.stance_mod.wpn_fps_ass_s552)	

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_s556 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}
	
	end

	if self.parts.wpn_fps_ass_dd5_ns_flash then 

		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_dd5_ns_flash")	
	
	end

	if self.parts.wpn_fps_ass_m16_m_soviet then 

		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_m16_m_soviet")	
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_ar47_m_blk")
	
	end

	if self.parts.wpn_fps_ass_tecci_m_jungle_m4 then 

		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_ass_tecci_m_jungle_m4")	
		table.insert(self.wpn_fps_ass_s556.uses_parts, "wpn_fps_upg_m4_s_mag")	

		self.parts.wpn_fps_ass_s556_s_folded.forbids = self.parts.wpn_fps_ass_s556_s_folded.forbids or {}
		table.insert(self.parts.wpn_fps_ass_s556_s_folded.forbids, "wpn_fps_ass_tecci_m_jungle_m4")	
		table.insert(self.parts.wpn_fps_ass_s556_s_folded.forbids, "wpn_fps_upg_m4_m_d60")	

		self.parts.wpn_fps_ass_s556_s_folded_green.forbids = self.parts.wpn_fps_ass_s556_s_folded_green.forbids or {}
		table.insert(self.parts.wpn_fps_ass_s556_s_folded_green.forbids, "wpn_fps_ass_tecci_m_jungle_m4")	
		table.insert(self.parts.wpn_fps_ass_s556_s_folded_green.forbids, "wpn_fps_upg_m4_m_d60")	
	
	end

	if self.parts.wpn_fps_upg_o_claymore then --Vanilla-Style Sights
	
		self.parts.wpn_fps_upg_o_claymore.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_s552)
		self.parts.wpn_fps_upg_o_katabatic.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_s552)	
		self.parts.wpn_fps_upg_o_ncstar_micro_1.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_s552)
		self.parts.wpn_fps_upg_o_northtac_ass.stance_mod.wpn_fps_ass_s556 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_s552)

	end
	
end)