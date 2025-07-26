--Hook made by MiamiCenter
--This one is simply adding new narrator to the heist.
--[[	function DialogManager:set_narrator(narrator)
		if not XAudio then
			log("Install SuperBLT soo I can add Hazzalaw's Voice Lines.")
			return
		else local narrator_codes = {
				bain = "ban",
				locke = "loc",
				hazzalaw = "haz"
			}
			self._narrator_prefix = "Play_" .. narrator_codes[narrator] .. "_"
		end
	end
]]
Hooks:PostHook(LevelsTweakData, "get_narrator_prefix", "add_new_narrators", function(self, narrator)
	if not narrator then
		local level_data = Global.level_data and Global.level_data.level_id and self[Global.level_data.level_id]

		if level_data then
			narrator = level_data.narrator
		end
	end

	local narrator_codes = {
		bain = "ban",
		locke = "loc",
		hazzalaw = "haz"
	}

	return narrator_codes[narrator] or "ban"
end)