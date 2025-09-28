Hooks:PostHook(WeaponFactoryTweakData, "init", "omnisightinit", function(self)

	-- vmp support
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		table.insert(self.wpn_fps_shot_omni.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_shot_omni.uses_parts, "wpn_fps_ass_m4_s_russian")

	self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_shot_omni = 
	{
		translation = Vector3(0, -3.5, -0.12),
		rotation = Rotation(0, 0, 0)
	}

	end

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods Legacy") then
		table.insert(self.wpn_fps_shot_omni.uses_parts, "wpn_fps_m4_g_wrap")
	
	end

	if BeardLib.Utils:FindMod("AR AK Mods") then
		table.insert(self.wpn_fps_shot_omni.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
	
	end

	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_shot_omni = 
	{
		translation = Vector3(0, 0, -3.5),
		rotation = Rotation(0, 0.2, 0)
	}
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_shot_omni = 
	{
		translation = Vector3(0, 0, -6.15),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_shot_omni = 
	{
		translation = Vector3(0.05, 0, -3.35),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_omni = {
		translation = Vector3(-0.04, -0.8, -0.135),
		rotation = Rotation(-0.11, 0 ,-0.7)
	}

	self.parts.wpn_fps_shot_omni_m_pmag.bullet_objects = {
		prefix = "g_shell_", 
		amount = 10
	}

	self.parts.wpn_fps_shot_omni_m_contraband.bullet_objects = {
		prefix = "g_shell_", 
		amount = 10
	}

	self.parts.wpn_fps_shot_omni_m_standard.bullet_objects = {
		prefix = "g_shell_", 
		amount = 2
	}

	self.parts.wpn_fps_upg_o_irons_mp7_down.visibility = {
		{
			objects = {
				g_sights_up_lod0 = false,
				g_sights_lod0 = true
			}
		}
	}

	if BeardLib.Utils:FindMod("Weapon Texture Reworks") then	

		self.parts.wpn_fps_shot_omni_os_frontsight.unit = "units/mods/weapons/wpn_fps_shot_omni_pts/wpn_fps_shot_omni_os_frontsight_gsma"

	end

end )