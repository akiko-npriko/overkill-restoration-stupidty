Hooks:PostHook(WeaponFactoryTweakData, "init", "uncle12_weaponfactorytweakdata_init", function(self)

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		local weapon_id = "wpn_fps_shot_uncle12"
		local weapon_uses_parts_list = {
								
										"wpn_fps_upg_fl_ass_smg_sho_pointshoot"

										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end	

end)