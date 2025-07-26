Hooks:PostHook(CarryTweakData,"init","score_carrytweak_init",function(self)

	self.money_burnt = {
		type = "medium",
		name_id = "hud_carry_money_burnt",
		bag_value = "money_burnt",
		visual_unit_name = "units/payday2/characters/npc_acc_loot_bag_1/npc_acc_loot_bag_1",
		dye = true,
		AI_carry = {
			SO_category = "enemies"
		}
	}
end)