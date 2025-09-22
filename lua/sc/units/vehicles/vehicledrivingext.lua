--[[
function VehicleDrivingExt:_detect_invalid_possition(t, dt)
	local respawn = false
	local rot = self._vehicle:rotation()

	if rot:z().z < 0.6 and not self._invalid_position_since then
		self._invalid_position_since = t
	elseif rot:z().z >= 0.6 and self._invalid_position_since then
		self._invalid_position_since = nil
	end

	local velocity = self._vehicle:velocity():length()

	if velocity < 10 and not self._stopped_since then
		self._stopped_since = t --fix the typo here that makes it impossible to meet the criteria for a vehicle counting as stuck
	elseif velocity >= 10 and self._stopped_since then
		self._stopped_since = nil
	end

	if self._stopped_since and t - self._stopped_since > 0.2 and self._invalid_position_since and t - self._invalid_position_since > 0.2 then
		respawn = true
	end

	local state = self._vehicle:get_state()
	local speed = state:get_speed()
	local gear = state:get_gear()

	if self._current_state_name == VehicleDrivingExt.STATE_DRIVING then
		local condition = gear ~= 1 and velocity < 10 and speed < 0.5 and self._last_input_fwd_dt > 0.2 and self._last_input_bwd_dt > 0.2 and self._stopped_since and t - self._stopped_since > 0.5

		if condition then
			self._could_not_move = condition
		elseif speed > 0.5 then
			self._could_not_move = false
			self._last_input_bwd_dt = 0
			self._last_input_fwd_dt = 0
		end
	end

	self.respawn_available = respawn or self._could_not_move
	self._position_dt = self._position_dt + dt

	if self._position_dt > 1 then
		if not self.respawn_available and speed > 2 and rot:z().z >= 0.9 then
			if not self._positions[self._position_counter] then
				self._positions[self._position_counter] = {}
			end

			self._positions[self._position_counter].pos = self._vehicle:position()
			self._positions[self._position_counter].rot = self._vehicle:rotation()
			self._positions[self._position_counter].oobb = self._unit:oobb()
			self._position_counter = self._position_counter + 1

			if self._position_counter == 20 then
				self._position_counter = 0
				self._position_counter_turnover = true
			end
		end

		self._position_dt = 0
	end

	if self.respawn_available and not self._respawn_available_since then
		self._respawn_available_since = t
	elseif not self.respawn_available then
		self._respawn_available_since = nil
	end

	if self._respawn_available_since and t - self._respawn_available_since > 10 then
		self:respawn_vehicle(true)
	end
end
--]]

--Hoppip Useful Bots Function

function VehicleDrivingExt:_find_unit_seat(unit)
	for _, seat in pairs(self._seats) do
		if alive(seat.occupant) and seat.occupant == unit then
			return seat
		end
	end
end


local clbk_drive_SO_verification_original = VehicleDrivingExt.clbk_drive_SO_verification
function VehicleDrivingExt:clbk_drive_SO_verification(seat, candidate_unit, ...)
	-- If bot was told to hold, don't enter
	if restoration.usefulbot_settings.hold_position and candidate_unit:movement()._should_stay then
		return
	end

	-- If vehicle is slower than bot running speed, don't enter
	if restoration.usefulbot_settings.block_slow_vehicles and self._tweak_data.max_speed * (1000 / 60) < candidate_unit:base():char_tweak().move_speed.stand.run.cbt.fwd then
		return
	end

	-- If our follow unit is not in the vehicle don't enter
	local objective = candidate_unit:brain() and candidate_unit:brain():objective()
	if objective and objective.follow_unit and not self:_find_unit_seat(objective.follow_unit) then
		return
	end

	return clbk_drive_SO_verification_original(self, seat, candidate_unit, ...)
end