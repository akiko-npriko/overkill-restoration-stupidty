Hooks:PostHook(MissionDoorTweakData,"init","score_missiondoor_init",function(self)

	self.score_door_trolley = {
		devices = {}
	}
	self.score_door_trolley.devices.drill = {
		{
			align = "a_drill",
			timer = 180,
			can_jam = true,
			unit = Idstring("units/payday2/equipment/item_door_drill_small/item_door_drill_small")
		}
	}
	self.score_door_trolley.devices.c4 = {
		{
			align = "a_c4_1",
			unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge_single")
		},
		{
			align = "a_c4_2",
			unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge_single")
		}
	}
	
end)