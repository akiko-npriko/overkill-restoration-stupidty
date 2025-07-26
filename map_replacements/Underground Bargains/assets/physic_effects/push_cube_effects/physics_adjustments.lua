Hooks:PostHook(DLCTweakData, "init", "xanax_dlc_tweakdata", function (self, tweak_data, ...)
	if XAudio then
		self.custom_heist = {
			free = true,
			content = {}
		}
	end
end)