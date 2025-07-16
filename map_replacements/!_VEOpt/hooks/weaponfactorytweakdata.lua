Hooks:PostHook(WeaponFactoryTweakData, "init", "vortex_eleanor_standalone_mod_init", function(self)


	local custom_sight_id = "wpn_fps_upg_o_vortex_eleanor_pd3"
	local based_on_id = "wpn_fps_upg_o_specter"
	local offset = Vector3(0, 5, 0.03)
	if self.parts[custom_sight_id].stance_mod then
		for _, wpn_id in pairs(self.parts[custom_sight_id].stance_mod) do
			if wpn_id.translation then
				wpn_id.translation = (wpn_id.translation + offset)
			end
		end
		self.parts[custom_sight_id].stance_mod.wpn_fps_smg_cobray = {translation = offset}
		self.parts[custom_sight_id].stance_mod.wpn_fps_ass_asval = {translation = offset}
		self.parts[custom_sight_id].stance_mod.wpn_fps_ass_sub2000 = {translation = offset}
	end
	for _, part_id in pairs(self.parts) do
		if part_id.override and part_id.override[based_on_id] then
			part_id.override[custom_sight_id] = deep_clone(part_id.override[based_on_id])
			if part_id.override[custom_sight_id].stance_mod then
				for _, wpn_id in pairs(part_id.override[custom_sight_id].stance_mod) do
					if wpn_id.translation then
						wpn_id.translation = (wpn_id.translation + offset)
					end
				end
			end
		end
	end
	


	local custom_sight_id = "wpn_fps_upg_o_vortex_eleanor_switch"
	local based_on_id = "wpn_fps_upg_o_acog"
	local offset = Vector3(0, -3, -4.2)
	if self.parts[custom_sight_id].stance_mod then
		self.parts[custom_sight_id].stance_mod = deep_clone(self.parts[based_on_id].stance_mod)
		for _, wpn_id in pairs(self.parts[custom_sight_id].stance_mod) do
			if wpn_id.translation then
				wpn_id.translation = (wpn_id.translation + offset)
			end
		end
		self.parts[custom_sight_id].stance_mod.wpn_fps_smg_cobray = {translation = offset}
		self.parts[custom_sight_id].stance_mod.wpn_fps_ass_asval = {translation = offset}
		self.parts[custom_sight_id].stance_mod.wpn_fps_ass_sub2000 = {translation = offset}
	end
	for _, part_id in pairs(self.parts) do
		if part_id.override and part_id.override[based_on_id] then
			part_id.override[custom_sight_id] = deep_clone(part_id.override[based_on_id])
			if part_id.override[custom_sight_id].stance_mod then
				for _, wpn_id in pairs(part_id.override[custom_sight_id].stance_mod) do
					if wpn_id.translation then
					wpn_id.translation = (wpn_id.translation + offset)
					end
				end
			end
		end
	end

	
	
	
end)