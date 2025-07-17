
Hooks:PreHook(PlayerStandard, "update", "railgunpewupdate", function(self, t, dt)
	local primary = alive(self._unit) and self._unit.inventory and alive(self._unit:inventory():unit_by_selection(2)) and self._unit:inventory():unit_by_selection(2).base and self._unit:inventory():unit_by_selection(2):base()
	if primary and primary._railgunsttat then
		self:_primary_railgunregen_ammo(t, dt)
	end
end)

function PlayerStandard:_primary_railgunregen_ammo(t, dt)
	local primary = self._unit:inventory():unit_by_selection(2):base()
	local active = primary and self._unit:inventory():equipped_selection() == 2
	if primary then
		local regen_ammo_time = primary._railgunsttat.regen_ammo_time or 0.5
		local regen_rate = primary._railgunsttat.regen_rate or 10

		primary._primary_regen_rate = primary._primary_regen_rate or regen_rate
		primary._primary_regenerate_ammo_timer = primary._primary_regenerate_ammo_timer or 0
		if primary:get_ammo_total() >= primary:get_ammo_remaining_in_clip() then
			--primary:get_ammo_total() = primary:get_ammo_remaining_in_clip()
			--fix later
		end
		if active and self._shooting then
			primary._primary_recharge_yell = nil
			primary._primary_regenerate_ammo_timer = regen_ammo_time
		end
		if primary:clip_empty() then
			if active and self._shooting then
				self:_check_stop_shooting()
				self:_interupt_action_steelsight(t)
			end
			primary._primary_regen_rate = 0
		end
		if primary:clip_empty() then 
			primary._primary_regenerate_ammo_timer = nil
		end
		if primary:get_ammo_remaining_in_clip() >= 10 then
			primary._primary_regenerate_ammo_timer = regen_ammo_time
		end
		if primary._primary_regenerate_ammo_timer and not primary:clip_empty() and ((active and not self:_is_reloading()) or (not active)) then
			primary._primary_regenerate_ammo_timer = primary._primary_regenerate_ammo_timer - dt
			if primary._primary_regenerate_ammo_timer < 0 then
				self:primary_railgunregen_ammo(dt * primary._primary_regen_rate)
				if not primary._primary_recharge_yell then
					primary._primary_recharge_yell = true
					if active then
						primary._sound_fire:post_event("night_vision_on")
					end
				end
			end
		end
	end
end

function PlayerStandard:primary_railgunregen_ammo(value)
	local primary = self._unit:inventory():unit_by_selection(2):base()
	self._primary_add_bullet = self._primary_add_bullet or value
	if self._primary_add_bullet then
		self._primary_add_bullet = self._primary_add_bullet + value
		if math.floor(self._primary_add_bullet+0.5) >= 1 then
			primary:set_ammo_remaining_in_clip( primary:get_ammo_remaining_in_clip() + math.floor(self._primary_add_bullet+0.5))
			primary:set_ammo_total( primary:get_ammo_total() + math.floor(self._primary_add_bullet+0.5))
			managers.hud:set_ammo_amount(primary:selection_index(), primary:ammo_info())
			self._primary_add_bullet = nil
		end
	end
end