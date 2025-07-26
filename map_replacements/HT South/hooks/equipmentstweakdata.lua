Hooks:PostHook(EquipmentsTweakData, "init", "tj_htsb_custom_equipments", function(self)

	self.specials.tj_htsb_manager_keycard = {
			sync_possession = true,
			action_message = "tj_htsb_manager_keycard_obtained",
			transfer_quantity = 4,
			text_id = "hud_int_tj_htsb_manager_keycard",
			icon = "equipment_bank_manager_key"
		}
	
end)