Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "SKSModInit", function(self)
	if self.parts.wpn_fps_upg_sks_o_pu then
		table.list_append(self.parts.wpn_fps_upg_sks_o_pu.forbids, {"wpn_fps_upg_sks_sightrail_long"})
	end
	if self.parts.wpn_fps_ass_sks_sightrail then
		table.list_append(self.parts.wpn_fps_ass_sks_sightrail.forbids, {"wpn_fps_upg_o_cs","wpn_fps_upg_o_spot","wpn_fps_upg_o_tf90","wpn_fps_upg_o_bmg"})
	end
	local custom_wpn_id = "wpn_fps_ass_sks"
	local offset = Vector3(1.23, 0, 0.39) + Vector3(0, 4.2048, 0.6973)
	for _, part_id in pairs(self.parts) do
		if part_id.type == "gadget" and part_id.sub_type == "second_sight" and part_id.stance_mod and part_id.a_obj == "a_o" then
			if part_id.stance_mod[custom_wpn_id] and part_id.stance_mod[custom_wpn_id].translation then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
			end
		end
	end
	if BeardLib.Utils:FindMod("WeaponLib") then
		self.parts.wpn_fps_upg_sks_mag_detach10.override_weapon = {
			animations = {
				reload_name_id = "sks_mag"
			},
			timers = {
				reload_not_empty = 1.9,
				reload_empty = 3.4
			}
		}
		self.parts.wpn_fps_upg_sks_mag_detach20.override_weapon = {
			animations = {
				reload_name_id = "sks_mag"
			},
			timers = {
				reload_not_empty = 1.9,
				reload_empty = 3.4
			}
		}
	end
end)
