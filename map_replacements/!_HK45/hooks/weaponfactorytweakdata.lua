Hooks:PostHook( WeaponFactoryTweakData, "init", "hk45_stuff", function(self)

	for _, id in pairs(self.wpn_fps_pis_packrat.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_pis_packrat then
			stance_mod.wpn_fps_pis_sg45 = stance_mod.wpn_fps_pis_packrat 
		end
	end

	if self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot then --Vanilla Mod Pack

		table.insert(self.wpn_fps_pis_sg45.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_sg45 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}

	end

end)