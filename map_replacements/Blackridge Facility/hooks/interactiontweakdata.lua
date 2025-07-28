Hooks:PostHook(InteractionTweakData, "init", "init_btms", function (self, ...)
    self.btms_disable_radars = {}
    self.btms_disable_radars.text_id = "int_btms_disable_radars_text"
    self.btms_disable_radars.action_text_id = "btms_disable_radars_action"
    self.btms_disable_radars.timer = 0.25
    self.btms_disable_radars.interact_distance = 200
    self.btms_close_doors = {}
    self.btms_close_doors.text_id = "int_btms_close_doors_text"
    self.btms_close_doors.action_text_id = "btms_close_doors_action"
    self.btms_close_doors.timer = 0.25
    self.btms_close_doors.interact_distance = 200
	log"Loaded BTMS interaction!"
end)
