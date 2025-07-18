Hooks:PostHook( WeaponTweakData, "init", "polar9_falloff_real_init", function(self)

self.polar9.damage_falloff = self.colt_1911.damage_falloff
self.x_polar9.damage_falloff = self.x_1911.damage_falloff
self.baller.damage_falloff = self.lemming.damage_falloff

self.polar9_crew = deep_clone(self.c45_crew)
self.x_polar9_crew = deep_clone(self.x_c45_crew)
self.baller_crew = deep_clone(self.lemming_crew)

	if BeardLib.Utils:FindMod("Off-hand Knife") then
	
		self.polar9.animations.knife_anim = "pistolknife"
		self.baller.animations.knife_anim = "pistolknife"
	
	end

	if restoration then

		self.polar9.external_support = true	
		self.polar9.recategorize = { "light_pis" }
		self.polar9.damage_type = "light_pistol"
		self.polar9.fire_mode_data.fire_rate =  0.0882352
		self.polar9.AMMO_MAX = 75
		self.polar9.CLIP_AMMO_MAX = 17
		self.polar9.tactical_reload = 1
		self.polar9.lock_slide = true
		self.polar9.kick = self.stat_info.kick_tables.even_recoil
		self.polar9.kick_pattern = {
			{0, self.stat_info.kick_tables.moderate_kick},
			{3, self.stat_info.kick_tables.right_kick},
			{8, self.stat_info.kick_tables.moderate_left_kick},
			{14, self.stat_info.kick_tables.even_recoil}
		}
		self.polar9.supported = true
		self.polar9.ads_speed = 0.160
		self.polar9.damage_falloff = {
			start_dist = 1900,
			end_dist = 3500,
			min_mult = 0.25
		}
		self.polar9.stats = {
			damage = 24,
			spread = 57,
			recoil = 79,
			spread_moving = 9,
			zoom = 1,
			concealment = 29,
			suppression = 12,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.polar9.stats_modifiers = nil
		self.polar9.panic_suppression_chance = 0.05
		self.polar9.timers = deep_clone(self.b92fs.timers)
		--Akimbo
			self.x_polar9.external_support = true	
			self.x_polar9.recategorize = { "light_pis" }
			self.x_polar9.damage_type = "light_pistol"
			self.x_polar9.fire_mode_data.fire_rate =  0.08333
			self.x_polar9.BURST_FIRE = {
				count = 2,
				delay = 0.15,
				rof_mult = 4,
				recoil_mult = 0.25,
				last_recoil_mult = 1.05,
			}
			self.x_polar9.AMMO_MAX = 150
			self.x_polar9.CLIP_AMMO_MAX = 34
			self.x_polar9.tactical_reload = 2
			self.x_polar9.lock_slide = true
			self.x_polar9.kick = self.stat_info.kick_tables.even_recoil
			self.x_polar9.kick_pattern = {
				{0, self.stat_info.kick_tables.moderate_kick},
				{3, self.stat_info.kick_tables.right_kick},
				{8, self.stat_info.kick_tables.moderate_left_kick},
				{14, self.stat_info.kick_tables.even_recoil}
			}
			self.x_polar9.supported = true
			self.x_polar9.ads_speed = 0.160
			self.x_polar9.damage_falloff = {
				start_dist = 1900,
				end_dist = 3500,
				min_mult = 0.25
			}
			self.x_polar9.stats = {
				damage = 24,
				spread = 47,
				recoil = 69,
				spread_moving = 9,
				zoom = 1,
				concealment = 29,
				suppression = 12,
				alert_size = 2,
				extra_ammo = 101,
				total_ammo_mod = 400,
				value = 1,
				reload = 20
			}
			self.x_polar9.stats_modifiers = nil
			self.x_polar9.panic_suppression_chance = 0.05
			self.x_polar9.timers = deep_clone(self.x_b92fs.timers)

		self.baller.external_support = true
		self.baller.desc_id = "bm_baller_sc_desc"
		self.baller.recategorize = { "heavy_pis" }
		self.baller.damage_type = "heavy_pistol"
		self.baller.fire_mode_data.fire_rate = 0.1263157894
		self.baller.CLIP_AMMO_MAX = 8
		self.baller.AMMO_MAX = 40
		self.baller.kick = self.stat_info.kick_tables.right_recoil
		self.baller.kick_pattern = {
			{0, self.stat_info.kick_tables.vertical_kick},
			{3, self.stat_info.kick_tables.right_kick},
			{6, self.stat_info.kick_tables.right_recoil}
		}
		self.baller.supported = true
		self.baller.can_shoot_through_enemy = false
		self.baller.can_shoot_through_shield = false
		self.baller.can_shoot_through_wall = false
		self.baller.armor_piercing_chance = 0
		self.baller.ads_speed = 0.200
		self.baller.damage_falloff = {
			start_dist = 1400,
			end_dist = 4000,
			min_mult = 0.333333
		}
		self.baller.stats = {
			damage = 45,
			spread = 58,
			recoil = 73,
			spread_moving = 5,
			zoom = 1,
			concealment = 27,
			suppression = 9,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.baller.stats_modifiers = nil
		self.baller.reload_speed_multiplier = 1.05
		self.baller.panic_suppression_chance = 0.05
		self.baller.timers.reload_exit_empty = 0.5
		self.baller.timers.reload_exit_not_empty = 0.65
	
	end


end )