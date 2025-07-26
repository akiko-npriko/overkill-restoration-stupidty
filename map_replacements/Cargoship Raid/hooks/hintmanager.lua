--Adding custom hints, by MiamiCenter
HintManager.xanax = HintManager.init;

function HintManager:init(...)

	self:xanax(...)
	self:addCustomHint("hint_alarm_on_containers", "stinger_feedback_negative")
	self:addCustomHint("hint_hardcore_death", "stinger_feedback_negative")
	self:addCustomHint("hint_answer_phone", "stinger_feedback_negative")
	
end

function HintManager:addCustomHint(str, event)
	
	Global.hint_manager.hints[str] = {
		text_id = str,
		trigger_times = nil,
		trigger_count = 0,
		sync = true,
		event = event,
		level = nil
	}
	
end