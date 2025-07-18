Hooks:PostHook(WeaponFactoryTweakData, "init", "HSHDMModInit", function(self)


--	self.parts.wpn_fps_pis_hshdm_slide.material_config = Idstring("units/mods/weapons/wpn_fps_pis_hshdm_pts/hshdm_gold_slide")

--	self.parts.wpn_fps_pis_hshdm_frame_gold.override.wpn_fps_pis_hshdm_slide = {material_config = Idstring("units/mods/weapons/wpn_fps_pis_hshdm_pts/hshdm_slide")}
	--[[cafcw
	if attach_tables.Custom_Pistol then
		for _, part_id in pairs(attach_tables.Custom_Pistol) do
			self.wpn_fps_pis_hshdm.override[part_id] = {parent="false"}
		end
	end
	]]
	self.wpn_fps_pis_hshdm.adds.wpn_fps_upg_fl_pis_laser = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_hshdm.adds.wpn_fps_upg_fl_pis_tlr1 = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_hshdm.adds.wpn_fps_upg_fl_pis_crimson = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_hshdm.adds.wpn_fps_upg_fl_pis_x400v = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_hshdm.adds.wpn_fps_upg_fl_pis_m3x = {
				"wpn_fps_pis_deagle_fg_rail"
			}
			
	self.wpn_fps_pis_x_hshdm.adds.wpn_fps_upg_fl_pis_laser = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_x_hshdm.adds.wpn_fps_upg_fl_pis_tlr1 = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_x_hshdm.adds.wpn_fps_upg_fl_pis_crimson = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_x_hshdm.adds.wpn_fps_upg_fl_pis_x400v = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.wpn_fps_pis_x_hshdm.adds.wpn_fps_upg_fl_pis_m3x = {
				"wpn_fps_pis_deagle_fg_rail"
			}
	self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_hshdm = {
				translation = Vector3(0, 5, -0.68)
			}
end)