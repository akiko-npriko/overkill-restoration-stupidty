Hooks:PostHook( BlackMarketTweakData, "_init_weapon_skins", "OAPSkinInit", function(self)

	-- safe crasher (i assume)
    self.weapon_skins.new_m4_payday.parts.wpn_fps_upg_fg_ropup = {
				[Idstring("tti_fg"):key()] = {
					pattern = Idstring("units/payday2_cash/safes/cf15/pattern/pattern_crackled_ground_df"),
					pattern_gradient = Idstring("units/payday2_cash/safes/cf15/pattern_gradient/gradient_cf15_001_df"),
					uv_scale = Vector3(6.12667, 6.55574, 0),
					uv_offset_rot = Vector3(0.265233, 0.880774, 6.2682),
					pattern_tweak = Vector3(0.920584, 0, 1)
				}
	}
	self.weapon_skins.new_m4_payday.parts.wpn_fps_upg_fg_split = {
				[Idstring("tti_fg"):key()] = {
					pattern = Idstring("units/payday2_cash/safes/cf15/pattern/pattern_crackled_ground_df"),
					pattern_gradient = Idstring("units/payday2_cash/safes/cf15/pattern_gradient/gradient_cf15_001_df"),
					uv_scale = Vector3(6.12667, 6.55574, 0),
					uv_offset_rot = Vector3(0.265233, 0.880774, 6.2682),
					pattern_tweak = Vector3(0.920584, 0, 1)
				}
	}
	
	-- NITRO
	self.weapon_skins.new_m4_cs3.parts.wpn_fps_upg_fg_ropup = {
				[Idstring("tti_fg"):key()] = {
					pattern = "units/payday2_cash/safes/cs3/pattern/cs3_pattern_017_b_df",
					pattern_gradient = "units/payday2_cash/safes/cs3/pattern_gradient/gradient_cs3_017_df",
				--	base_gradient = "units/payday2_cash/safes/cs3/base_gradient/base_cs3_022_df",
					base_gradient = "units/payday2_cash/safes/cs3/base_gradient/base_cs3_016_df",
					pattern_pos = Vector3(-0.489864, 0.178297, 0)
				}
	}
	self.weapon_skins.new_m4_cs3.parts.wpn_fps_upg_fg_split = {
				[Idstring("tti_fg"):key()] = {
					pattern = "units/payday2_cash/safes/cs3/pattern/cs3_pattern_017_b_df",
					pattern_gradient = "units/payday2_cash/safes/cs3/pattern_gradient/gradient_cs3_017_df",
				--	base_gradient = "units/payday2_cash/safes/cs3/base_gradient/base_cs3_022_df",
					base_gradient = "units/payday2_cash/safes/cs3/base_gradient/base_cs3_016_df",
					pattern_pos = Vector3(-0.489864, 0.178297, 0)
				}
	}
	
end)