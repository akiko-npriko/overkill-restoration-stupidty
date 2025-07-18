Hooks:PostHook(WeaponFactoryTweakData, "init", "LewisGunWebomLipFix", function(self)
	if BeardLib.Utils:FindMod("WeaponLib") then
		self.parts.wpn_fps_upg_lewis_mag_ext.override_weapon = {
			animations = {
				reload_name_id = "lewis_ext"
			},
			timers = {
				reload_not_empty = 4.1,
				reload_empty = 5.1
			}
		}
	end
end)
