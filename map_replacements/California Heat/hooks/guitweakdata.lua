Hooks:PostHook( GuiTweakData, "init", "richie_contact", function(self)
	local contact_data = {
		id = "richie",
		name_id = "contact_richie_name",
		{
			desc_id = "contact_richie_desc",
			video = "richie",
			post_event = nil
		}
	}
	
	table.insert(self.crime_net.codex[1], contact_data)
end)