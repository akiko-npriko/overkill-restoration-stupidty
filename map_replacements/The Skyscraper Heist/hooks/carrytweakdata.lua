Hooks:PostHook(CarryTweakData, "init", "skyscraperheistcarry", function(self, tweak_data)

	self.c4bag = {
	type= "medium",
	name_id = "hud_carry_c4bag",
	unit = "units/pd2_dlc1/pickups/gen_pku_explosivesbag/gen_pku_explosivesbag",
	visual_unit_name = "units/payday2/characters/npc_acc_explosives_bag_1/npc_acc_explosives_bag_1",
	is_unique_loot = true
	}
	self.empbag= {
	type= "medium",
	name_id = "hud_carry_empbag",
	visual_unit_name = "units/payday2/characters/npc_acc_loot_bag_1/npc_acc_loot_bag_1",
	is_unique_loot = true
	}
end)