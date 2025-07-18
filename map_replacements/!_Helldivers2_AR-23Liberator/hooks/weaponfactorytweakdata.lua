Hooks:PostHook(WeaponFactoryTweakData, "init", "HD2Liberator_init", function(self)

-- i hate zeroing sights, i hate sight stance mods, i hate this shit so fuckin' much

self.wpn_fps_ass_ar23.override= {
	wpn_fps_ass_ar23_optic = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(0, -13.2, -2.65),rotation = Rotation(0, 0, -0.000)}}},
	wpn_fps_upg_ar23_o_promo = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(-0.1, -23.2, -2.3),rotation = Rotation(-0.1, 0, -0.000)}}},
	wpn_fps_ass_ar23_optic_3 = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(0, -18.2, -2.12),rotation = Rotation(0, 0, -0.000)}}},
	wpn_fps_ass_ar23_o_carbine = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(0, -17.304, -2.8),rotation = Rotation(0, 0, -0.000)}}},
	wpn_fps_ass_ar23_optic_3_ck = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(0.2, -2.2, 1.0),rotation = Rotation(0, 0, -0.000)}}},
	wpn_fps_upg_o_45rds = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(-0.87, 0, -12.5),rotation = Rotation(0, 0, -45.000)}}},
	wpn_fps_upg_o_45rds_v2 = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(-0.87, 0, -12.5),rotation = Rotation(0, 0, -45.000)}}},
	wpn_fps_upg_o_45steel = {stance_mod = {wpn_fps_ass_ar23 = {translation = Vector3(-0.87, 0, -12.5),rotation = Rotation(0, 0, -45.000)}}}
}

	local custom_sight_id = "wpn_fps_ass_ar23_optic"
	local based_on_id = "wpn_fps_upg_o_reflex"
	local offset = Vector3(0, -3.2, -0)
	if self.parts[custom_sight_id].stance_mod then
		for _, wpn_id in pairs(self.parts[custom_sight_id].stance_mod) do
			if wpn_id.translation then
				wpn_id.translation = (wpn_id.translation + offset)
			end
		end
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_smg_cobray = {translation = offset}
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_ass_asval = {translation = offset}
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_ass_sub2000 = {translation = offset}
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

	local custom_sight_id = "wpn_fps_ass_ar23_optic_3"
	local based_on_id = "wpn_fps_upg_o_reflex"
	local offset = Vector3(0, -3.2, -0)
	if self.parts[custom_sight_id].stance_mod then
		for _, wpn_id in pairs(self.parts[custom_sight_id].stance_mod) do
			if wpn_id.translation then
				wpn_id.translation = (wpn_id.translation + offset)
			end
		end
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_smg_cobray = {translation = offset}
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_ass_asval = {translation = offset}
		-- self.parts[custom_sight_id].stance_mod.wpn_fps_ass_sub2000 = {translation = offset}
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

 self.parts.wpn_fps_ass_ar23_mag.animations = {
		reload = "reload",
		reload_not_empty = "reload_not_empty"
		}

 self.parts.wpn_fps_ass_ar23_dh.animations = {
		reload = "reload",
		fire = "recoil",
		fire_steelsight = "recoil"
		}

 self.parts.wpn_fps_ass_ar23_body.animations = {
		fire = "recoil",
		fire_steelsight = "recoil"
		}

 self.parts.wpn_fps_ass_ar23_ck_penetrator.override_weapon = {
	        CLIP_AMMO_MAX = 30,
	        AMMO_MAX = 300
                }

end )