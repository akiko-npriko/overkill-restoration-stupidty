--Hook made by MiamiCenter
--This one is simply adding new narrator to the heist.
	function DialogManager:set_narrator(narrator)
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

--Adding Cargoship's texts for Hazzalaw narrator;
	if Global.game_settings.level_id == "Xanax" then
		LocalizationManager:add_localized_strings({
			["menu_description_hazzalaw"] = "Shinobi's Masterplan",
			["menu_spectator_being_traded_hesitant_hazzalaw"] = "Hazzalaw is negotiating with cops... You'll be fine."
		})
	end
