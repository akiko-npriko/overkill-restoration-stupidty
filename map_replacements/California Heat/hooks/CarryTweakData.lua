Hooks:PostHook(CarryTweakData,"init","PD2Custom_init",function(self)

	-- cus_loot_weed
	self.weed = {
		type = "coke_light",
		name_id = "hud_carry_weed",
		bag_value = "coke",
		visual_unit_name = "units/payday2/characters/npc_acc_loot_bag_1/npc_acc_loot_bag_1",
		AI_carry = {
			SO_category = "enemies"
		}
	}
	
end)
