Hooks:PostHook(CarryTweakData, "init", "init_sbh_carry", function(self, tweak_data)
   self.NFT_LOOT = {
		type = "heavy",
		name_id = "TSNFT_hud_carry_NFT",
		bag_value = "coke",
		visual_unit_name = "units/payday2/characters/npc_acc_loot_bag_1/npc_acc_loot_bag_1",
		AI_carry = {
			SO_category = "enemies"
		}
	}
end)