Hooks:PostHook(WeaponFactoryTweakData, "init", "luffy_your_raifu_is_trash_factorytweakdata_init", function(self)

	self:_clone_part_type_for_weapon("magazine", "wpn_fps_ass_m416d", 1)

	self.parts.wpn_fps_ass_m416d_receiver_lower.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		magazine_empty = "last_recoil"
		}
		
	self.parts.wpn_fps_ass_m416d_receiver_lower_a5.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		magazine_empty = "last_recoil"
		}
		
		
	self.parts.wpn_fps_ass_m416d_bad_lever.animations = {
		reload = "reload"

		}
		
	if BeardLib.Utils:FindMod("L119A2") then
		local weapon_id = "wpn_fps_ass_m416d"
		local weapon_uses_parts_list = {
										"wpn_fps_ass_m416d_charging_handle_ach"

										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end				



	if BeardLib.Utils:FindMod("Tacticool Charging Handle Pack") then
		local weapon_id = "wpn_fps_ass_m416d"
		local weapon_uses_parts_list = {
										"wpn_fps_upg_raptor",
										"wpn_fps_upg_masp",
										"wpn_fps_upg_geis",
										"wpn_fps_upg_badg",
										"wpn_fps_upg_ava"

										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end			

	if BeardLib.Utils:FindMod("Noveske Navy Attachments") then
		local weapon_id = "wpn_fps_ass_m416d"
		local weapon_uses_parts_list = {
										"wpn_fps_upg_charging_handle_super_badass"

										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end				
	
	if BeardLib.Utils:FindMod("SIG Sauer ROMEO4T") then
		local weapon_id = "wpn_fps_ass_m416d"
		local weapon_uses_parts_list = {
										"wpn_fps_ass_m416d_optic_romeo4t_wilcox"

										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end					
		
end)