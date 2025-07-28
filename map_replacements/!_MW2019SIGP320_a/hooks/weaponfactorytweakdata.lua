Hooks:PostHook(WeaponFactoryTweakData, "init", "papa320_weaponfactorytweakdata_init", function(self)

 self.parts.wpn_fps_pis_papa320_magazine.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload"
		}
 self.parts.wpn_fps_pis_papa320_magazine_ext.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload"
		}
 self.parts.wpn_fps_pis_papa320_magazine_ext2.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload"
		}
		
--	self.wpn_fps_x_papa320.override.wpn_fps_pis_papa320_magazine.animations = {
--		reload_not_empty = "reload_not_empty",
--		reload = "reload"
--		} 
	
end)