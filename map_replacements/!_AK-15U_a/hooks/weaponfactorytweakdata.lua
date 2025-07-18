Hooks:PostHook( WeaponFactoryTweakData, "init", "ak15u_factory_init", function(self)

	for _, id in pairs(self.wpn_fps_ass_flint.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_ass_flint then
			stance_mod.wpn_fps_smg_ak15u = stance_mod.wpn_fps_ass_flint 
		end
	end

	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_flint)
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_flint)	
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_flint)
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_flint)	

	self.parts.wpn_fps_smg_ak15u_s_dummy.visibility = {
		{
			objects = {
				g_barrel = false
			}
		}
	}

	if self.parts.wpn_fps_upg_o_claymore then
	
		self.parts.wpn_fps_upg_o_claymore.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_flint)
		self.parts.wpn_fps_upg_o_katabatic.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_flint)	
		self.parts.wpn_fps_upg_o_ncstar_micro_1.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_flint)
		self.parts.wpn_fps_upg_o_northtac_ass.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_flint)

	end

	if self.parts.wpn_fps_upg_ak_m_double then --A pile of AK/CAR mods
	
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_upg_ak_m_double")
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_upg_ak_m_bakeband")
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_upg_ak_m_basset")	
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_ass_flint_dh_galil")	

		self.wpn_fps_smg_ak15u.override = self.wpn_fps_smg_ak15u.override or {}
		self.wpn_fps_smg_ak15u.override.wpn_fps_upg_m4_s_hcar = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}
		self.wpn_fps_smg_ak15u.override.wpn_fps_upg_m4_s_pts_v2 = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}
		self.wpn_fps_smg_ak15u.override.wpn_fps_ass_hera_s_russian = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}
		self.wpn_fps_smg_ak15u.override.wpn_fps_upg_m4_s_cut = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}
		self.wpn_fps_smg_ak15u.override.wpn_fps_upg_m4_s_magless = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}
		
	end	

	if self.parts.wpn_fps_ass_ak_m_proto then --Vanilla Mod Pack

		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_ass_ak_m_proto")
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_upg_ak_m_slick")
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_upg_ak_m_tiny")	
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			
		table.insert(self.wpn_fps_smg_ak15u.uses_parts, "wpn_fps_ass_m4_s_russian")

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_smg_ak15u = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_flint)

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_ak15u = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}

		self.wpn_fps_smg_ak15u.override = self.wpn_fps_smg_ak15u.override or {}
		self.wpn_fps_smg_ak15u.override.wpn_fps_ass_m4_s_russian = {
			parent = "shitass_s",
			a_obj = "a_ns"
		}

	end

--[[if BeardLib.Utils:FindMod("AK Correct Magpul Assist Mags") then

		self.wpn_fps_smg_ak15u.override = self.wpn_fps_smg_ak15u.override or {}
		self.wpn_fps_smg_ak15u.override.wpn_fps_upg_ak_m_quick = {
			unit = "units/mods/weapons/wpn_fps_ass_akm_m_magpul/wpn_fps_ass_akm_m_magpul"
		}

	end]]

end)