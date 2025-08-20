Hooks:PostHook(UpgradesTweakData, "_player_definitions", "hook_post_player_definitions", function(self)
	self:add_custom_upgrades(self)
end)

function UpgradesTweakData:add_custom_upgrades(self)
	self.values.temporary.adaptive_plate_base = {
		{
			6,
			2.0
		}
	}
	
	self.values.temporary.adaptive_plate_stage_0 = {
		{
			2,
			2
		}
	}
	
	self.values.temporary.adaptive_plate_stage_1 = {
		{
			1,
			2
		}
	}
	self.values.temporary.adaptive_plate_stage_2 = {
		{
			1,
			2
		}
	}
	self.values.temporary.adaptive_plate_stage_3 = {
		{
			1,
			2
		}
	}
	self.values.temporary.adaptive_plate_stage_4 = {
		{
			1,
			2
		}
	}
	
	self.values.player.adaptive_plate_multiplier = {
		60,
		120,
		240
	}
	
	self.definitions.adaptive_plate_base = {
		name_id = "menu_adaptive_plate_base",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_base",
			category = "temporary"
		}
	}
	
	self.definitions.player_adaptive_plate_multiplier_1 = {
		name_id = "menu_player_adaptive_plate_multiplier_1",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_multiplier",
			category = "player"
		}
	}
	
	self.definitions.temporary_adaptive_plate_stage_0 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_stage_0",
			category = "temporary"
		}
	}
	
	self.definitions.temporary_adaptive_plate_stage_1 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_stage_1",
			category = "temporary"
		}
	}
	
	self.definitions.temporary_adaptive_plate_stage_2 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_stage_2",
			category = "temporary"
		}
	}
	
	self.definitions.temporary_adaptive_plate_stage_3 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_stage_3",
			category = "temporary"
		}
	}
	
	self.definitions.temporary_adaptive_plate_stage_4 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "adaptive_plate_stage_4",
			category = "temporary"
		}
	}
	
	self.definitions.adaptive_plate = {
		category = "grenade"
	}
end