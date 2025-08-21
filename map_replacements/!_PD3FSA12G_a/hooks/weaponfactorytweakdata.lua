Hooks:PostHook(WeaponFactoryTweakData, "init", "PAYDAY3_FSA12G_init", function(self)

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		local weapon_id = "wpn_fps_sho_fsa12"
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