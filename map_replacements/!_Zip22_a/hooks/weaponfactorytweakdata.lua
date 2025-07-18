Hooks:PostHook(WeaponFactoryTweakData, "init", "zip22_weaponfactorytweakdata_init", function(self)

	
 	if BeardLib.Utils:FindMod("Tacticool suppressors") then
		local weapon_id = "wpn_fps_pis_zip22"
		local weapon_uses_parts_list = {

										"wpn_fps_ass_ns_g_bacon"
										}
		for _,part_id in ipairs( weapon_uses_parts_list ) do
			if self[weapon_id] then
				table.insert( self[weapon_id].uses_parts, part_id )
			end
		end
	end			



	
end)

