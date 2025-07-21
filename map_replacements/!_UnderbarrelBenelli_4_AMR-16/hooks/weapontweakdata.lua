Hooks:PostHook( WeaponTweakData, "init", "UnderbarrelShotgun_init", function(self)

self.type54_underbarrel.animations = {
	equip_id = "equip_contraband_m203",
	recoil_steelsight = true
}
self.type54_underbarrel.categories = {
	"shotgun"
}
self.type54_underbarrel.damage_near = 2000
self.type54_underbarrel.damage_far = 3000
self.type54_underbarrel.rays = 8
self.type54_underbarrel.CLIP_AMMO_MAX = 8
self.type54_underbarrel.NR_CLIPS_MAX = 8
self.type54_underbarrel.fire_mode_data = {
	fire_rate = 0.14
}
self.type54_underbarrel.single = {
	fire_rate = 0.14
}
self.type54_underbarrel.timers = {
	reload_not_empty = 2.45,
	reload_empty = 2.45,
	unequip = 0.6,
	equip = 0.6,
	equip_underbarrel = 0.4,
	unequip_underbarrel = 0.4
}
self.type54_underbarrel.spread = {
	standing = self.r870.spread.standing,
	crouching = self.r870.spread.crouching,
	steelsight = self.r870.spread.steelsight,
	moving_standing = self.r870.spread.moving_standing,
	moving_crouching = self.r870.spread.moving_crouching,
	moving_steelsight = self.r870.spread.moving_steelsight
}
self.type54_underbarrel.kick = {
	standing = self.r870.kick.standing
}
self.type54_underbarrel.kick.crouching = self.benelli.kick.standing
self.type54_underbarrel.kick.steelsight = self.r870.kick.steelsight
self.type54_underbarrel.AMMO_MAX = self.type54_underbarrel.CLIP_AMMO_MAX * self.type54_underbarrel.NR_CLIPS_MAX
self.type54_underbarrel.AMMO_PICKUP = {
	0.015,
	1
}
self.type54_underbarrel.upgrade_blocks = {
	weapon = {
		"clip_ammo_increase"
	}
}
self.type54_underbarrel.sounds.fire = "benelli_m4_fire"
self.type54_underbarrel.sounds.dryfire = "shotgun_dryfire"
self.type54_underbarrel.ignore_crit_damage = true
self.type54_underbarrel.ignore_damage_multipliers = true
self.type54_underbarrel.ignore_damage_upgrades = true
self.type54_underbarrel.crosshair = {
	standing = {},
	crouching = {},
	steelsight = {}
}
self.type54_underbarrel.crosshair.standing.offset = 0.16
self.type54_underbarrel.crosshair.standing.moving_offset = 0.8
self.type54_underbarrel.crosshair.standing.kick_offset = 0.6
self.type54_underbarrel.crosshair.standing.hidden = true
self.type54_underbarrel.crosshair.crouching.offset = 0.08
self.type54_underbarrel.crosshair.crouching.moving_offset = 0.7
self.type54_underbarrel.crosshair.crouching.kick_offset = 0.4
self.type54_underbarrel.crosshair.crouching.hidden = true
self.type54_underbarrel.crosshair.steelsight.hidden = true
self.type54_underbarrel.crosshair.steelsight.offset = 0
self.type54_underbarrel.crosshair.steelsight.moving_offset = 0
self.type54_underbarrel.crosshair.steelsight.kick_offset = 0.1

	if restoration then
		self.type54_underbarrel.categories = {
							"shotgun",
							"shotgun_pistol"
						}
						self.type54_underbarrel.rays = 8
						self.type54_underbarrel.muzzleflash = "effects/payday2/particles/weapons/big_51b_auto_fps" --"effects/particles/shotgun/shotgun_gen"
						self.type54_underbarrel.AMMO_MAX = 10
						self.type54_underbarrel.CLIP_AMMO_MAX = 1
						self.type54_underbarrel.fire_mode_data = {}
						self.type54_underbarrel.fire_mode_data.fire_rate = 0.24
						self.type54_underbarrel.kick = self.stat_info.kick_tables.vertical_kick
						self.type54_underbarrel.kick_pattern = {
							{0, self.stat_info.kick_tables.vertical_kick},
							{2, self.stat_info.kick_tables.right_kick},
							{3, self.stat_info.kick_tables.even_recoil}
						}
						self.type54_underbarrel.supported = true
						self.type54_underbarrel.use_stance = "type54"
						self.type54_underbarrel.ads_speed = 0.180
						self.type54_underbarrel.damage_falloff = {
							start_dist = 700,
							end_dist = 2200,
							min_mult = 0.125
						}
						self.type54_underbarrel.stats = {
							damage = 90,
							spread = 56,
							recoil = 77,
							spread_moving = 6,
							zoom = 1,
							concealment = 29,
							suppression = 6,
							alert_size = 2,
							extra_ammo = 101,
							total_ammo_mod = 400,
							value = 1,
							reload = 20
						}
						self.type54_underbarrel.stats_modifiers = nil
						self.type54_underbarrel.panic_suppression_chance = 0.05
						self.type54_underbarrel.ignore_crit_damage = false
						self.type54_underbarrel.ignore_damage_multipliers = false
						self.type54_underbarrel.ignore_damage_upgrades = false
						self.type54_underbarrel.timers.reload_exit_empty = 0.35
						self.type54_underbarrel.timers.reload_exit_not_empty = 0.35
	end

end )