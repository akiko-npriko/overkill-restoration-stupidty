function ElementFilter:on_executed(instigator)
	if not self._values.enabled then
		return
	end

	if not self:_check_platform() then
		return
	end

	if not self:_check_difficulty() then
		return
	end

	if not self:_check_players() then
		return
	end

	if not self:_check_mode() then
		return
	end
	
	if not self:_check_one_down() then
		return
	end
	
	ElementFilter.super.on_executed(self, instigator)
end

function ElementFilter:_check_one_down()
	if not self._values.one_down then
		return true
	end
	if Global.game_settings.one_down and self._values.one_down then
		return true
	end
	
	return false
end
