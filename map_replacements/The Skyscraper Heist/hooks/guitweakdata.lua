Hooks:PostHook( GuiTweakData, "init", "thenexthorizoncontact", function(self)
	local contact_data = {
		id = "thenexthorizon", 
		name_id = "thenexthorizonname_id",
		{
			desc_id = "thenexthorizondesc_id",
			video = "dragon1",
			post_event = nil
		}
	}
	
	table.insert(self.crime_net.codex[1], contact_data)
end)