Hooks:PostHook(WeaponFactoryTweakData, "init", "operator_as_fuck_hook_name", function(self)

	-- FUCKING VANILLA PP-19-01 AUGH
	
	self.wpn_fps_smg_vityaz.override = self.wpn_fps_smg_vityaz.override or {}
	self.wpn_fps_smg_vityaz.override.wpn_fps_upg_ak_s_pt1 = {
		override = {
			wpn_upg_ak_g_standard = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			}
		}
	} -- FUCK OFFFFFFFFF


	-- turns out that with the internal parts/ammo removed this is just a giant custom weapon compatibility script lul
	
	local function do_part_insert_thingy(weapon_table,part_id)
		for _, wep_id in pairs(weapon_table) do
			if self[wep_id] then
				table.insert(self[wep_id].uses_parts, part_id) -- tfw stealing code from hdd lambda now
			end
		end
	end
	
	local customs_amine = {
		"wpn_fps_ass_bajur",
		"wpn_fps_ass_mikon",
		"wpn_fps_ass_lazy",
		"wpn_fps_ass_hugsforleon"
	}
	do_part_insert_thingy(customs_amine,"wpn_fps_upg_o_amine")
	
	local customs_wellgrip = {
		"wpn_fps_ass_bajur",
		"wpn_fps_ass_drongo",
		"wpn_fps_ass_greyhound",
		"wpn_fps_ass_obr5",
		"wpn_fps_smg_r0933blk",
		"wpn_fps_ass_op68",
		"wpn_fps_ass_hk416",
		"wpn_fps_ass_stoy_556",
		"wpn_fps_ass_stoy_919",
		"wpn_fps_ass_adar",
		"wpn_fps_ass_flat",
		"wpn_fps_ass_gameover",
		"wpn_fps_ass_petto",
		"wpn_fps_sho_amr12",
		"wpn_fps_smg_m4cqb",
		"wpn_fps_ass_m4bpre"
	}
	do_part_insert_thingy(customs_wellgrip,"wpn_fps_upg_wellgrip")
	--[[
	local customs_handguard = {
		"wpn_fps_ass_soppo",
		"wpn_fps_smg_car9"
	}
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_fg_split")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_fg_ropup")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_fg_bcm")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_fg_geissele")

	local customs_psa_mid = {
		"wpn_fps_ass_adar",
		"wpn_fps_smg_m4cqb",
		"wpn_fps_ass_mk18prim",
		"wpn_fps_ass_gameover",
		"wpn_fps_ass_m4bpre"
	}
	do_part_insert_thingy(customs_psa_mid,"wpn_fps_upg_psa_hg_split")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_psa_hg_ropup")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_psa_hg_bcm")
	do_part_insert_thingy(customs_handguard,"wpn_fps_upg_psa_hg_geissele")
	]]
end)