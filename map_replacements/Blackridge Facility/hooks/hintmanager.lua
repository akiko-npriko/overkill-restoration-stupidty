HintManager.btms = HintManager.init;

function HintManager:init(...)

	self:btms(...)
	self:addCustomHint("btms_alarm", "stinger_feedback_negative")
	self:addCustomHint("btms_answer_phone", "stinger_feedback_negative")
	
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