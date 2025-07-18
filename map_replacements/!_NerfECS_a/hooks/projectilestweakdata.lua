Hooks:PostHook(BlackMarketTweakData,"_init_projectiles","nerf_init_proj",function(self)
	self.projectiles.nerf_dart_standard = {
		name_id = "bm_nerf_dart",
		unit = "units/mods/weapons/wpn_fps_bow_stampede_ecs_pts/wpn_fps_bow_stampede_ecs_ammo",
--		local_unit = "units/mods/weapons/wpn_fps_bow_stampede_ecs_pts/wpn_fps_bow_stampede_ecs_ammo_local",
		weapon_id = "stampede_ecs",
		no_cheat_count = true,
		impact_detonation = true,
		client_authoritative = true,
		is_custom_projectile = true
	}
	table.insert(self._projectiles_index,#self._projectiles_index+1,"nerf_dart_standard")
	
	self.projectiles.nerf_dart_poison = {
		name_id = "bm_wp_wpn_fps_bow_stampede_ecs_ammo_poison",
		unit = "units/mods/weapons/wpn_fps_bow_stampede_ecs_pts/wpn_fps_bow_stampede_ecs_ammo_poison",
		weapon_id = "stampede_ecs",
		no_cheat_count = true,
		impact_detonation = true,
		client_authoritative = true,
		is_custom_projectile = true
	}
	table.insert(self._projectiles_index,#self._projectiles_index+1,"nerf_dart_poison")
end)