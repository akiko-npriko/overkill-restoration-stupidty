Hooks:PostHook( GuiTweakData, "init", "trooperjack_contact", function(self)
	local contact_data = {
		id = "trooperjack",
		name_id = "heist_contact_trooperjack",
		{
			desc_id = "heist_contact_trooperjack_desc",
			video = "myh1",
			post_event = nil
		}
	}

	table.insert(self.crime_net.codex[1], contact_data)
end)