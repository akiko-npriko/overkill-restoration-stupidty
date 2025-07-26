--Custom Blames, took hook from Elmsworth Mansion heist made by LoquaciousWalrus and Rex, and changed it for Cargoship heist.
tweak_data.blame.alarm_on_containers = "hint_blame_alarm_on_containers"
tweak_data.blame.alarm_on_containers = "hint_blame_hardcore_death"

table.insert(GroupAIStateBase.BLAME_SYNC, "alarm_on_containers")
table.insert(GroupAIStateBase.BLAME_SYNC, "hardcore_death")

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
	alarm_on_containers = "alarm_on_containers",
	hardcore_death = "hardcore_death"
}