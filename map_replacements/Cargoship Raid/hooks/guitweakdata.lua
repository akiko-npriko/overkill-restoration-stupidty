--Created by PD2Concepts, or someone who makes scripts for them. Makes the description for contractors appear in the Contact Database. - Use it, why not :D
Hooks:PostHook( GuiTweakData, "init", "shinobi_contact", function(self)
	local contact_data = {
		id = "shinobi", 
		name_id = "contact_shinobi_name", 
		{
			desc_id = "contact_shinobi_desc", 
			video = "dragon1",
			post_event = nil
		},
		{
			desc_id = "contact_shinobi_desc_personal",
			video = "dragon1",
			post_event = nil
		}
	}

	table.insert(self.crime_net.codex[1], contact_data)
end)