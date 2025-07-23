local Offensives = {
	"wpn_prj_hd2offensive_eagle_airstrike",
	"wpn_prj_hd2offensive_orbital_120mm",
	"wpn_prj_hd2offensive_orbital_precision",
	"wpn_prj_hd2offensive_orbital_gas"
}

if RequiredScript== "lib/tweak_data/blackmarket/projectilestweakdata" then
	local MPath = ModPath

	Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "hd2offensive_add_projectile", function(self)
		-- eagle_airstrike
		self.projectiles.wpn_prj_hd2offensive_eagle_airstrike = {
			name_id = "bm_wpn_prj_hd2offensive_eagle_airstrike",
			desc_id = "bm_wpn_prj_hd2offensive_eagle_airstrike_desc",
			unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/eagle_airstrike/wpn_prj_hd2offensive_eagle_airstrike",
			unit_dummy = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/wpn_prj_hd2offensive_husk",
			local_unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/eagle_airstrike/wpn_prj_hd2offensive_eagle_airstrike_local",
			icon = "ace_projectile",
			based_on = "wpn_prj_ace",
			throw_shout = true,
			no_cheat_count = true,
			impact_detonation = true,
			client_authoritative = true,
			add_trail_effect = true,
			throwable = true,
			is_a_grenade =  true,
			-- dlc = "pd2_dlc_hd2o",
			texture_bundle_folder = "pd2_dlc_hd2o",
			anim_global_param = "projectile_four",
			max_amount = 3,  --数量
			throw_allowed_expire_t = 0.15,
			expire_t = 1.1,
			repeat_expire_t = 0.3,
			base_cooldown = 60,  -- 投掷物CD
			offensive = {
				projectile_id = "launcher_m203",
				neatly_x = true,
				bombs = 6,
				range_x = 1300,
				range_y = 300,
				height = 6000,
				launch_angle_x = -2000,
				position_fix = 1650,
				timer = 0.7,
				delay = 3,
				kill_assets_delay = 3.5,
				type = "fighter",
				random_x = false
			}
		}

		-- orbital_120mm
		self.projectiles.wpn_prj_hd2offensive_orbital_120mm = {
			name_id = "bm_wpn_prj_hd2offensive_orbital_120mm",
			desc_id = "bm_wpn_prj_hd2offensive_orbital_120mm_desc",
			unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_120mm/wpn_prj_hd2offensive_orbital_120mm",
			unit_dummy = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/wpn_prj_hd2offensive_husk",
			local_unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_120mm/wpn_prj_hd2offensive_orbital_120mm_local",
			icon = "ace_projectile",
			based_on = "wpn_prj_ace",
			throw_shout = true,
			no_cheat_count = true,
			impact_detonation = true,
			client_authoritative = true,
			add_trail_effect = true,
			throwable = true,
			is_a_grenade =  true,
			-- dlc = "pd2_dlc_hd2o",
			texture_bundle_folder = "pd2_dlc_hd2o",
			anim_global_param = "projectile_four",
			max_amount = 1,
			throw_allowed_expire_t = 0.15,
			expire_t = 1.1,
			repeat_expire_t = 0.3,
			base_cooldown = 120,
			offensive = {
				projectile_id = "rocket_ray_frag",
				bombs = 20,
				range_x = 2000,
				range_y = 2000,
				height = 8000,
				launch_angle_x = -8000,
				timer = 25,
				delay = 5,
				kill_assets_delay = 25,
				type = "orbital"
			}
		}

		-- orbital_precision
		self.projectiles.wpn_prj_hd2offensive_orbital_precision = {
			name_id = "bm_wpn_prj_hd2offensive_orbital_precision",
			desc_id = "bm_wpn_prj_hd2offensive_orbital_precision_desc",
			unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_precision/wpn_prj_hd2offensive_orbital_precision",
			unit_dummy = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/wpn_prj_hd2offensive_husk",
			local_unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_precision/wpn_prj_hd2offensive_orbital_precision_local",
			icon = "ace_projectile",
			based_on = "wpn_prj_ace",
			throw_shout = true,
			no_cheat_count = true,
			impact_detonation = true,
			client_authoritative = true,
			add_trail_effect = true,
			throwable = true,
			is_a_grenade =  true,
			-- dlc = "pd2_dlc_hd2o",
			texture_bundle_folder = "pd2_dlc_hd2o",
			anim_global_param = "projectile_four",
			max_amount = 1,
			throw_allowed_expire_t = 0.15,
			expire_t = 1.1,
			repeat_expire_t = 0.3,
			base_cooldown = 40,
			offensive = {
				projectile_id = "rocket_frag",
				height = 8000,
				timer = 0,
				delay = 3,
				kill_assets_delay = 4,
				type = "orbital"
			}
		}

		-- Orbital Gas
		self.projectiles.wpn_prj_hd2offensive_orbital_gas = {
			name_id = "bm_wpn_prj_hd2offensive_orbital_gas",
			desc_id = "bm_wpn_prj_hd2offensive_orbital_gas_desc",
			unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_gas/wpn_prj_hd2offensive_orbital_gas",
			unit_dummy = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/wpn_prj_hd2offensive_husk",
			local_unit = "units/pd2_dlc_hd2o/weapons/wpn_prj_hd2offensive/orbital_gas/wpn_prj_hd2offensive_orbital_gas_local",
			icon = "ace_projectile",
			based_on = "wpn_prj_ace",
			throw_shout = true,
			no_cheat_count = true,
			impact_detonation = true,
			client_authoritative = true,
			add_trail_effect = true,
			throwable = true,
			is_a_grenade =  true,
			-- dlc = "pd2_dlc_hd2o",
			texture_bundle_folder = "pd2_dlc_hd2o",
			anim_global_param = "projectile_four",
			max_amount = 1,
			throw_allowed_expire_t = 0.15,
			expire_t = 1.1,
			repeat_expire_t = 0.3,
			base_cooldown = 60,
			offensive = {
				projectile_id = "launcher_poison_ms3gl_conversion",
				bombs = 10,
				range_x = 2000,
				range_y = 2000,
				height = 10000,
				launch_angle_x = -1000,
				timer = 1.5,
				delay = 2,
				kill_assets_delay = 3,
				type = "orbital"
			}
		}

		for _, ofs in ipairs(Offensives) do
			table.insert(self._projectiles_index, ofs)
		end
	end)
elseif RequiredScript== "lib/tweak_data/blackmarkettweakdata" then
	Hooks:PostHook(BlackMarketTweakData, "init", "hd2offensive_bm_base_init", function(self)
		-- for SC
		if self._projectiles_index_resmod then
			for _, ofs in ipairs(Offensives) do
				table.insert(self._projectiles_index_resmod, ofs)
			end			
		end
	end)
elseif RequiredScript == "lib/tweak_data/tweakdata" then
	--添加额外数值
	for _, ofs in ipairs(Offensives) do
		tweak_data.projectiles[ofs] = {
			damage = 4,
			launch_speed = 1500,
			adjust_z = 0,
			mass_look_up_modifier = 1,
			name_id = "bm_" .. ofs,
			push_at_body_index = 0,
			sounds = {
				flyby = "throwing_star_flyby",
				flyby_stop = "throwing_star_flyby_stop",
				impact = "throwables_impact_gen"
			}
		}
	end
elseif RequiredScript == "lib/tweak_data/upgradestweakdata" then
	Hooks:PostHook(UpgradesTweakData, "_grenades_definitions", "hd2offensive_definitions",function(self)
		-- 添加到upgrades
		for _, ofs in ipairs(Offensives) do
			self.definitions[ofs] = {
				category = "grenade"
			}
		end
	end)

	Hooks:PostHook(UpgradesTweakData, "init", "hd2offensive_level_zero_setup",function(self)
		--添加到技能组
		for _, ofs in ipairs(Offensives) do
			table.insert(self.level_tree[0].upgrades, ofs)
		end
	end)
end