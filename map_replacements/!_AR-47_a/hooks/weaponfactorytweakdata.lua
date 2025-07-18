Hooks:PostHook(WeaponFactoryTweakData, "init", "mallninj762init", function(self)
	
	-- vmp support
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_tecci_s_minicontra")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_uupg_m4_fg_victorcar")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_m4_s_russian")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_m16_s_op")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_contraband_s_tecci")

		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_pod")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_vert")
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_medium")  

		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_m4_lower_reciever_tan")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_ass_m16_m_soviet")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_ass_ar47_m_blk")		
		
		table.insert(self.wpn_fps_ass_sg416.uses_parts, "wpn_fps_m4_lower_reciever_tan")
		
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_m4_lower_reciever_tan")
		table.insert(self.wpn_fps_shot_amr12.uses_parts, "wpn_fps_upg_ar47_upper_reciever_tecci")

		self.parts.wpn_fps_ass_ar47_body_ck.forbids = self.parts.wpn_fps_ass_ar47_body_ck.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ar47_body_ck.forbids, "wpn_fps_uupg_m4_fg_victorcar") 

	--[[self.parts.wpn_fps_ass_ar47_body_hk416.forbids = self.parts.wpn_fps_ass_ar47_body_hk416.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ar47_body_hk416.forbids, "wpn_fps_uupg_m4_fg_victorcar") ]]

		self.parts.wpn_fps_ass_ar47_body_c7.forbids = self.parts.wpn_fps_ass_ar47_body_c7.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ar47_body_c7.forbids, "wpn_fps_uupg_m4_fg_victorcar") 
		table.insert(self.parts.wpn_fps_ass_ar47_body_c7.forbids, "wpn_fps_vg_vmp_pod")  
		table.insert(self.parts.wpn_fps_ass_ar47_body_c7.forbids, "wpn_fps_vg_vmp_vert")  
		table.insert(self.parts.wpn_fps_ass_ar47_body_c7.forbids, "wpn_fps_vg_vmp_medium")  

		self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_ar47 = 
		{
			translation = Vector3(0, -3.5, -0.12),
			rotation = Rotation(0, 0, 0)
		}

		if self.parts.wpn_fps_ass_tecci_body_infinity then

		self.parts.wpn_fps_ass_tecci_body_infinity.forbids = self.parts.wpn_fps_ass_tecci_body_infinity.forbids or {}
		table.insert(self.parts.wpn_fps_ass_tecci_body_infinity.forbids, "wpn_fps_m4_lower_reciever_tan")

		end
	
	else
		-- vanilla mod pack not installed
	end

	self.parts.wpn_fps_ass_bdgr_m_soviet.name_id = "bm_wp_wpn_fps_ass_m16_m_soviet"
	self.parts.wpn_fps_ass_bdgr_m_soviet.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_ass_ar47_m_pmag"

	self.parts.wpn_fps_ass_bdgr_m_blk.name_id = "bm_wp_wpn_fps_ass_ar47_m_blk"
	self.parts.wpn_fps_ass_bdgr_m_blk.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_ass_ar47_m_blk"

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods Legacy") then
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_m4_g_wrap")
		
		self.parts.wpn_fps_ass_ar47_body_ck.forbids = self.parts.wpn_fps_ass_ar47_body_ck.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ar47_body_ck.forbids, "wpn_fps_m4_g_wrap")  

		self.parts.wpn_fps_ass_ar47_body_c7.forbids = self.parts.wpn_fps_ass_ar47_body_c7.forbids or {}
		table.insert(self.parts.wpn_fps_ass_ar47_body_ck.forbids, "wpn_fps_m4_g_wrap")  

	else
		-- vanilla mod pack legacy not installed
	end

	self.parts.wpn_fps_upg_o_45iron.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(-3.5, 0, -11.5), 
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(-3.5, 0, -11.5),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(-3.5, 0, -11.5),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(-3.5, 0, -11.5),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_hamr.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(0, 0, -0.2),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(0, 0, -3.65),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_atibal.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(0, 0, -1),
		rotation = Rotation(-0.02, 0, 0)
	}
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(0, 0, -6.15),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_ar47 = 
	{
		translation = Vector3(0.05, 0, -3.35),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_ar47 = {
		translation = Vector3(0.02, 6.8, -0.21),
		rotation = Rotation(-0.1, 0.08, 0)
	}

	self.parts.wpn_fps_ass_ar47_m_pmag.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 30
	}

	self.parts.wpn_fps_ass_ar47_m_d60.bullet_objects = {
		prefix = "g_bullet_", 
		amount = 6
	}

	self.parts.wpn_fps_upg_ass_ar47_b_heavy_gasblock.visibility = {
		{
			objects = {
				g_barrel = false
			}
		}
	}

	self.parts.wpn_fps_ass_hk416_gasblock.visibility = {
		{
			objects = {
				g_barrel = false,
				g_flipup = false,
				g_flipdown = false
			}
		}
	}

	self.parts.wpn_fps_ass_hk416_gasblock_down.visibility = {
		{
			objects = {
				g_barrel = false,
				g_gas = false,
				g_flipup = false,
				g_flipdown = true
			}
		}
	}

	self.parts.wpn_fps_ass_hk416_gasblock_up.visibility = {
		{
			objects = {
				g_barrel = false,
				g_gas = false,
				g_flipup = true,
				g_flipdown = false
			}
		}
	}

	self.parts.wpn_fps_upg_ass_ar47_b_heavy.adds = { "wpn_fps_upg_ass_ar47_b_heavy_gasblock" }	
	self.parts.wpn_fps_ass_ar47_fg_tti.forbids = { "wpn_fps_upg_ass_ar47_b_heavy_gasblock" }	

    self.wpn_fps_ass_l85a2.override = self.wpn_fps_ass_l85a2.override or {}
	self.wpn_fps_ass_l85a2.override.wpn_fps_ass_m16_m_soviet = {
		stats = {
			extra_ammo = 0,
			damage = 32,
			recoil = -5,
			spread = 1,
			total_ammo_mod = -8,
			reload = -2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.6,
			ammo_pickup_max_mul= 0.6
		}
	}

end)