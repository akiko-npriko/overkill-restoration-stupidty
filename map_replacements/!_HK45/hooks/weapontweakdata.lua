Hooks:PostHook( WeaponTweakData, "init", "hk45_stuff", function(self)

self.sg45.damage_falloff = self.usp.damage_falloff
self.x_sg45.damage_falloff = self.x_usp.damage_falloff

self.sg45_crew = deep_clone(self.usp_crew)
self.x_sg45_crew = deep_clone(self.x_usp_crew)

	if restoration then

		self.sg45.external_support = true
		self.sg45.recategorize = { "heavy_pis" }
		self.sg45.damage_type = "heavy_pistol"
		self.sg45.fire_mode_data.fire_rate = 0.1176470588
		self.sg45.CLIP_AMMO_MAX = 10
		self.sg45.AMMO_MAX = 40
		self.sg45.kick = self.stat_info.kick_tables.right_recoil
		self.sg45.kick_pattern = {
			{0, self.stat_info.kick_tables.vertical_kick},
			{3, self.stat_info.kick_tables.right_kick},
			{6, self.stat_info.kick_tables.right_recoil}
		}
		self.sg45.supported = true
		self.sg45.ads_speed = 0.180
		self.sg45.damage_falloff = {
			start_dist = 1000,
			end_dist = 3200,
			min_mult = 0.2
		}
		self.sg45.stats = {
			damage = 45,
			spread = 53,
			recoil = 75,
			spread_moving = 5,
			zoom = 1,
			concealment = 29,
			suppression = 9,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.sg45.stats_modifiers = nil
		self.sg45.reload_speed_multiplier = 1.05
		self.sg45.panic_suppression_chance = 0.05
		self.sg45.timers = deep_clone(self.lemming.timers)
				
		--Akimbo
		self.x_sg45.supported = true
		self.x_sg45.external_support = true
		self.x_sg45.recategorize = { "heavy_pis" }
		self.x_sg45.damage_type = "heavy_pistol"
		self.x_sg45.fire_mode_data.fire_rate =  0.1176470588
		self.x_sg45.BURST_FIRE = {
			count = 2,
			delay = 0.15,
			rof_mult = 4,
			recoil_mult = 0.25,
			last_recoil_mult = 1.05,
		}
		self.x_sg45.AMMO_MAX = 80
		self.x_sg45.CLIP_AMMO_MAX = 20
		self.x_sg45.tactical_reload = 2
		self.x_sg45.lock_slide = true
		self.x_sg45.kick = self.stat_info.kick_tables.right_recoil
		self.x_sg45.kick_pattern = {
			{0, self.stat_info.kick_tables.vertical_kick},
			{3, self.stat_info.kick_tables.right_kick},
			{6, self.stat_info.kick_tables.right_recoil}
		}
		self.x_sg45.ads_speed = 0.180
		self.x_sg45.damage_falloff = {
			start_dist = 1000,
			end_dist = 3200,
			min_mult = 0.2
		}
		self.x_sg45.stats = {
			damage = 45,
			spread = 43,
			recoil = 65,
			spread_moving = 5,
			zoom = 1,
			concealment = 29,
			suppression = 9,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.x_sg45.stats_modifiers = nil
		self.x_sg45.panic_suppression_chance = 0.05
		self.x_sg45.timers = deep_clone(self.x_b92fs.timers)
	
	end


end )