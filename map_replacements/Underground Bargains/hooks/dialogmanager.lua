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
--Hook made by MiamiCenter and Xeletron, this simply adds randomizations to the Narrators Voice Lines.
	local voicelines = {
		["h40"] = 2,			["h42"] = 2
	}

	function DialogManager:queue_narrator_dialog(id, params)
		if voicelines[id] then
			local limit = voicelines[id]
			id = id.."_"..math.random(1, limit)
			self._last_id = self:queue_dialog(self._narrator_prefix .. id, params)
			return self._last_id
		end
		self:queue_dialog(self._narrator_prefix .. id, params)
	end