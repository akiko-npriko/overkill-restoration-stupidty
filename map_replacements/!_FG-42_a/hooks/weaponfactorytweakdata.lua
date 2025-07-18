Hooks:PostHook( WeaponFactoryTweakData, "init", "FG42wftdInit", function(self)

	 self.parts.wpn_fps_lmg_fg42_mag_std.advanced_bullet_objects = {
			 [1] = {"g_bullet_1","g_bullet_pr_1"},
			 [2] = {"g_bullet_pr_1","g_bullet_1","g_bullet_2"},
			 [3] = {"g_bullet_pr_1","g_bullet_1","g_bullet_2","g_bullet_3"},
			 [4] = {"g_bullet_pr_1","g_bullet_1","g_bullet_2","g_bullet_3","g_bullet_4"},
			 [5] = {"g_bullet_pr_1","g_bullet_1","g_bullet_2","g_bullet_3","g_bullet_4","g_bullet_5"},
	 }
	for nbr = 6, 20, 1 do 
		self.parts.wpn_fps_lmg_fg42_mag_std.advanced_bullet_objects[nbr] = self.parts.wpn_fps_lmg_fg42_mag_std.advanced_bullet_objects[5]
	end
	self.parts.wpn_fps_lmg_fg42_mag_short.advanced_bullet_objects = self.parts.wpn_fps_lmg_fg42_mag_std.advanced_bullet_objects
	self.wpn_fps_lmg_fg42.adds = deep_clone(self.wpn_fps_smg_erma.adds)
	
end )