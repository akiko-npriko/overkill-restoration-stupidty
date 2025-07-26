tweak_data.blame.alarmed_doors_opened = "hint_blame_alarmed_doors_opened"
tweak_data.blame.phone_call_not_answered = "hint_blame_phone_call_not_answered"
tweak_data.blame.silent_assassin_detected = "hint_blame_silent_assassin_detected"

table.insert(GroupAIStateBase.BLAME_SYNC, "alarmed_doors_opened")
table.insert(GroupAIStateBase.BLAME_SYNC, "silent_assassin_detected")
table.insert(GroupAIStateBase.BLAME_SYNC, "phone_call_not_answered")

GroupAIStateBase.unique_triggers = {
	civilian_alarm = "civ_alarm",
	cop_alarm = "cop_alarm",
	gangster_alarm = "gan_alarm",
	metal_detector = "met_criminal",
	motion_sensor = "mot_criminal",
	glass_alarm = "gls_alarm",
	blackmailer = "sys_blackmailer",
	gensec = "sys_gensec",
	police_alerted = "sys_police_alerted",
	csgo_gunfire = "sys_csgo_gunfire",
	alarmed_doors_opened = "alarmed_doors_opened",
	phone_call_not_answered = "phone_call_not_answered",
	silent_assassin_detected = "silent_assassin_detected"
}