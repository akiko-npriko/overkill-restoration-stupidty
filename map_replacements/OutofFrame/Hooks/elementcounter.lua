if not Global.load_level == true and Global.game_settings.level_id == "highrisefix" then return end
ElementCounterFilter = ElementCounterFilter or class(CoreMissionScriptElement.MissionScriptElement)
function ElementCounterFilter:init(...)
	ElementCounterFilter.super.init(self, ...)
end
function ElementCounterFilter:on_script_activated()
end
function ElementCounterFilter:client_on_executed(...)
end
function ElementCounterFilter:on_executed(instigator)
	if not self._values.enabled then
		return
	end
	if not self:_values_ok() then
		return
	end
	ElementCounterFilter.super.on_executed(self, instigator)
end
function ElementCounterFilter:_values_ok()
	if self._values.check_type == "counters_equal" then
		return self:_all_counter_values_equal()
	end
	if self._values.check_type == "counters_not_equal" then
		return not self:_all_counter_values_equal()
	end
	if self._values.needed_to_execute == "all" then
		return self:_all_counters_ok()
	end
	if self._values.needed_to_execute == "any" then
		return self:_any_counters_ok()
	end
end
function ElementCounterFilter:_all_counter_values_equal()
	local test_value
	for _, id in ipairs(self._values.elements) do
		local element = self:get_mission_element(id)
		test_value = test_value or element:counter_value()
		if test_value ~= element:counter_value() then
			return false
		end
	end
	return true
end
function ElementCounterFilter:_all_counters_ok()
	for _, id in ipairs(self._values.elements) do
		if not self:_check_type(self:get_mission_element(id)) then
			return false
		end
	end
	return true
end
function ElementCounterFilter:_any_counters_ok()
	for _, id in ipairs(self._values.elements) do
		if self:_check_type(self:get_mission_element(id)) then
			return true
		end
	end
	return false
end
function ElementCounterFilter:_check_type(element)
	if self._values.counter_id then
		local element = self:get_mission_element(self._values.counter_id)
		self._values.value = element:counter_value()
	end
	if not self._values.check_type or self._values.check_type == "equal" then
		return element:counter_value() == self._values.value
	end
	if self._values.check_type == "less_or_equal" then
		return element:counter_value() <= self._values.value
	end
	if self._values.check_type == "greater_or_equal" then
		return element:counter_value() >= self._values.value
	end
	if self._values.check_type == "less_than" then
		return element:counter_value() < self._values.value
	end
	if self._values.check_type == "greater_than" then
		return element:counter_value() > self._values.value
	end
end
