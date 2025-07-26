Hooks:PostHook(InteractionTweakData,"init","lit_init",function(self)

	self.gen_pku_weed = deep_clone(self.gen_pku_cocaine)
	self.gen_pku_weed.text_id =			"hud_int_hold_take_weed"
	self.gen_pku_weed.action_text_id =	"hud_action_taking_weed"
	self.gen_pku_weed_directional = deep_clone(self.gen_pku_weed)
	self.gen_pku_weed_directional.axis = "y"

	self.bag_weed = deep_clone(self.gen_pku_weed)

	self.take_water = deep_clone(self.take_bottle)
	self.take_water.text_id = "hud_int_take_water"
	self.take_water.action_text_id = "hud_action_take_water"

	self.give_water = deep_clone(self.pour_spiked_drink)
	self.give_water.text_id = "hud_int_give_water"
	self.give_water.equipment_text_id = "hint_no_water"

end)
