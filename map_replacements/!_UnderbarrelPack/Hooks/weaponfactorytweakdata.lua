Hooks:PostHook( WeaponFactoryTweakData, "init", "UMPInit", function(self)
		
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" then
					table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, used_part_id)
				end
			end
		end		

		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" then
					table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, used_part_id)
				end
			end
		end

		self.parts.wpn_fps_ass_74_gl_gp25.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" then
					table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, used_part_id)
				end
			end
		end
		
		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "underbarrel_ammo" then
					table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, used_part_id)
				end
			end
		end

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "underbarrel_ammo" then
					table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, used_part_id)
				end
			end
		end

		self.parts.wpn_fps_ass_m4_gl_m320.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" then
					table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, used_part_id)
				end
			end
		end

		self.parts.wpn_fps_upg_a_m203_electric.depends_on = "underbarrel"
		self.parts.wpn_fps_upg_a_m203_poison.depends_on = "underbarrel"
		self.parts.wpn_fps_upg_a_m203_incendiary.depends_on = "underbarrel"

	-- Ak/Car Mod Pack
	if BeardLib.Utils:FindMod("AR AK Mods") then
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_m16_fg_edge")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_ar")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_m16_fg_edge")
		
		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_m16_fg_edge")
				
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_m16_fg_edge")
		
		-- GP25
		
		self.parts.wpn_fps_ass_74_gl_gp25.forbids = self.parts.wpn_fps_ass_74_gl_gp25.forbids or {}
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_modern")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_stg")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_upg_ak_fg_saiga")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_upg_ak_fg_saiga_ultimak")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_ar")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_mp5sd")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_vietnam")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_mp5sd")
		
	end
	
	-- Vanilla Mod Pack
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_m16_fg_smooth")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_m16_fg_smooth")
		
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_m16_fg_smooth")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_cylinder")

		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_m16_fg_smooth")
		
	end
		
	-- Hk Mod Pack
	if BeardLib.Utils:FindMod("HK Mods") then
	
		-- M203
		
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_ksk_sd")

		-- KACFLAME
		
		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_tfc")

		-- JAKPURIFIER
		
		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_tfc")
		
		-- M320

		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_tfc")
	
		-- M203 Short
	
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_m5k_norail")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_civilian")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_hk51b")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_hk51b_railed")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_polymer")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_wood")

	end
	
	-- Vanilla Attachments
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_ksk")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_mar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_04")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_01")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_03")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_ksk")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_galil_fg_mar")

		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_ksk")
		
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_ksk")

		-- GP25
		
		self.parts.wpn_fps_ass_74_gl_gp25.forbids = self.parts.wpn_fps_ass_74_gl_gp25.forbids or {}
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_tapco")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_mar")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_fab")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_04")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_01")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_03")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_flash")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_m5k")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_mp5sd")
		
		
	-- Default Handguards
	
		self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids = self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids, "wpn_fps_smg_mp5_gl_m203")
		
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_gl_m203")

		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")

		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_gl_m320")
		
		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_m4_gl_m203")
		
		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_74_gl_gp25")
	
		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")
	
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_gl_m203")
		
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")
		
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_gl_m320")
	
		self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids = self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids or {}
		table.insert(self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids, "wpn_fps_smg_mp5_gl_m203")
	
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_jakpurifier")
		
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_flamethrower_jakpurifier")
	
end