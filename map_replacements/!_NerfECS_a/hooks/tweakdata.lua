tweak_data.projectiles.nerf_dart_standard = {
	damage = 1,
	launch_speed = 2000,
	adjust_z = 0,
	mass_look_up_modifier = 1,
	name_id = "bm_nerf_dart"
--	push_at_body_index = 0
}
tweak_data.projectiles.nerf_dart_poison = table.deep_map_copy(tweak_data.projectiles.nerf_dart_standard)
tweak_data.projectiles.nerf_dart_poison.bullet_class = "PoisonBulletBase"
tweak_data.projectiles.nerf_dart_poison.name_id = "bm_wp_wpn_fps_bow_stampede_ecs_ammo_poison"
