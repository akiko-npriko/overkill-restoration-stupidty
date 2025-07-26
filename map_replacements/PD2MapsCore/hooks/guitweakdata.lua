Hooks:PostHook( GuiTweakData, "init", "pd2maps_contact", function(self)
	local contact_data = {
		id = "pd2maps",
		name_id = "heist_contact_pd2maps",
		{
			desc_id = "heist_contact_pd2maps_desc",
			video = "pd2m_codex1",
			post_event = nil
		},
		{
			desc_id = "heist_contact_pd2maps_crew_desc",
			video = "pd2m_codex1",
			post_event = nil
		}
	}

	table.insert(self.crime_net.codex[1], contact_data)
end)