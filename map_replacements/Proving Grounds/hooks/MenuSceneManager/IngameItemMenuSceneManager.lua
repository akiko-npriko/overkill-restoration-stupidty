local ids_unit = Idstring("unit")
IngameItemMenuSceneManager = IngameItemMenuSceneManager or class(DefaultIngameMenuSceneManager)

function IngameItemMenuSceneManager:init(unit)
	IngameItemMenuSceneManager.super.init(self, unit)

	managers.workshop:set_enabled(false)

	self._player_fps_hidden = false

	self._item_unit = nil
	self._current_item_oobb_object = nil

	self._item_base_pos = unit:position()
	self._item_base_rot = unit:rotation()

	self._item_size_offset = Vector3()

	self._item_pos = Vector3()

	self._item_yaw = 0
	self._item_pitch = 0
	self._item_roll = 0

	self._item_rot = Rotation()
	self._item_rot_mod = Rotation(0, 0, 0)
	self._item_rot_temp = Rotation()

	self._workspace = managers.gui_data:create_saferect_workspace()
	self._main_panel = self._workspace:panel():panel({layer = 0})
	
	local scaled_size = managers.gui_data:scaled_size()
	self._main_panel:set_shape(0, 0, scaled_size.width, scaled_size.height)

	self._grab = self._main_panel:panel({
		w = self._main_panel:w(),
		h = self._main_panel:h() - 64
	})

	self:_release_grab()
	self:_release_move_grab()

	self._use_grab = false
	self._disable_rotate = false
	self._disable_item_updates = false
	self._can_move_item = false
end

function IngameItemMenuSceneManager:update(t, dt)
	IngameItemMenuSceneManager.super.update(self, t, dt)

	if self._item_unit and self._item_unit.unit and not self._disable_item_updates and not self._grabbed then
		if not managers.blackmarket:currently_customizing_mask() and not self._disable_rotate then
			self._item_yaw = (self._item_yaw + 5 * dt) % 360
		end

		self._item_pitch = math.lerp(self._item_pitch, 0, 10 * dt)
		self._item_roll = math.lerp(self._item_roll, 0, 10 * dt)

		self:_update_item_pos_rot(true, true)
	end
end

function IngameItemMenuSceneManager:_update_item_pos_rot(update_pos, update_rot)
	if update_rot then
		mrotation.set_yaw_pitch_roll(self._item_rot_temp, self._item_yaw, self._item_pitch, self._item_roll)

		mrotation.set_zero(self._item_rot)
		mrotation.multiply(self._item_rot, self._item_base_rot)
		mrotation.multiply(self._item_rot, self._item_rot_temp)
		mrotation.multiply(self._item_rot, self._item_rot_mod)

		self._item_unit.unit:set_rotation(self._item_rot)
	end

	if update_pos then
		mvector3.set(self._item_pos, self._item_base_pos)
		mvector3.add(self._item_pos, self._item_size_offset)
		mvector3.add(self._item_pos, self._item_offset:rotate_with(self._item_rot))

		self._item_unit.unit:set_position(self._item_pos)
	end

	self._item_unit.unit:set_moving(2)
end

function IngameItemMenuSceneManager:_set_item_unit(unit, oobb_object, max_mod, type, second_unit, custom_data)
	self:remove_item()

	local scene_template = self._scene_templates.blackmarket_item
	if custom_data and custom_data.scene_template and self._scene_templates[custom_data.scene_template] then
		scene_template = self._scene_templates[custom_data.scene_template]
	end

	self._item_base_pos = self._unit:position()
	self._item_base_rot = self._unit:rotation()
	if scene_template and scene_template.reference_object then
		local reference_object = self._unit:get_object(Idstring(scene_template.reference_object))

		if reference_object then
			self._item_base_pos = reference_object:position()
			self._item_base_rot = reference_object:rotation()
		end
	end

	if custom_data and custom_data.item_offset then
		self._item_pos = self._item_pos + custom_data.item_offset
	end

	self._item_yaw = self._item_yaw or 0
	self._item_pitch = self._item_pitch or 0
	self._item_roll = self._item_roll or 0

	mrotation.set_zero(self._item_rot)
	mrotation.multiply(self._item_rot, self._item_base_rot)
	mrotation.multiply(self._item_rot, self._item_rot_mod)

	self._item_unit = {
		unit = unit,
		name = unit:name(),
		second_unit = second_unit
	}

	unit:set_position(self._item_pos)
	unit:set_rotation(self._item_rot)
	unit:set_moving(2)

	local oobb = oobb_object and unit:get_object(Idstring(oobb_object)):oobb() or unit:oobb()
	self._current_item_oobb_object = oobb_object and unit:get_object(Idstring(oobb_object)) or unit

	local oobb_size = oobb:size()
	local max = math.max(math.max(oobb_size.x, oobb_size.y), oobb_size.z)

	local camera_rotation_target = self._camera_values.rot_target
	if scene_template.reference_object then
		local object = self._unit:get_object(Idstring(scene_template.reference_object))
		if object then
			camera_rotation_target = object:rotation()
		end
	end

	local offset_dir = scene_template.camera_offset:rotate_with(camera_rotation_target):normalized()
	self._item_size_offset = offset_dir * (150 - math.max(max * (max_mod or 1), 20))

	self:_set_item_offset(oobb)
end

function IngameItemMenuSceneManager:_set_item_offset(oobb)
	local center = oobb:center()
	if self._item_unit.second_unit then
		center = math.lerp(self._item_unit.second_unit:oobb():center(), center, 0.5)
	end

	self._item_offset = self._item_unit.unit:position() - center
end

IngameItemMenuSceneManager.remove_item = MenuSceneManager.remove_item
IngameItemMenuSceneManager.get_item_unit_data = MenuSceneManager.get_item_unit_data
IngameItemMenuSceneManager.get_item_unit = MenuSceneManager.get_item_unit

function IngameItemMenuSceneManager:set_scene_template(template, data, custom_name, skip_transition)
	if IngameItemMenuSceneManager.super.set_scene_template(self, template, data, custom_name, skip_transition) then return true end

	if not skip_transition then
		local template_data = data or self._scene_templates[template]

		if template_data then
			if template_data.hide_player_fps and not self._player_fps_hidden then
				local redirect = self._player_unit:movement():current_state():get_animation("unequip")
				self._player_unit:camera():play_redirect(redirect)

				local equipped_unit = self._player_unit:inventory():equipped_unit()
				if equipped_unit and equipped_unit.base and equipped_unit:base() then
					equipped_unit:base():tweak_data_anim_stop("equip")
					equipped_unit:base():tweak_data_anim_play("unequip")
				end

				self._player_fps_hidden = true
			elseif not template_data.hide_player_fps and self._player_fps_hidden then
				local redirect = self._player_unit:movement():current_state():get_animation("equip")
				self._player_unit:camera():play_redirect(redirect)

				local equipped_unit = self._player_unit:inventory():equipped_unit()
				if equipped_unit and equipped_unit.base and equipped_unit:base() then
					equipped_unit:base():tweak_data_anim_stop("unequip")
					equipped_unit:base():tweak_data_anim_play("equip")
				end

				self._player_fps_hidden = false
			end

			self:_release_grab()
			self:_release_move_grab()

			self._use_grab = template_data.use_grab or false
			self._disable_rotate = template_data.disable_rotate or false
			self._disable_item_updates = template_data.disable_item_updates or false
			self._can_move_item = template_data.can_move_item or false
		end
	end
end

function IngameItemMenuSceneManager:pre_unload()
	IngameItemMenuSceneManager.super.pre_unload(self)

	self:remove_item()
end

function IngameItemMenuSceneManager:input_focus()
	return self._grabbed and true or false
end

local lerped_offset_vector = Vector3()
function IngameItemMenuSceneManager:change_fov(zoom, amount)
	IngameItemMenuSceneManager.super.change_fov(self, zoom, amount)

	if self._can_change_fov then
		if self._current_scene_template and self._scene_templates[self._current_scene_template] then
			local template_data = self._scene_templates[self._current_scene_template]

			if template_data.camera_offset then
				local camera_position = self._camera_values.current_position
				if template_data.reference_object then
					local object = self._unit:get_object(Idstring(template_data.reference_object))

					if object then
						camera_position = object:position()
					end
				end

				local lerp_value = math.max(-self._fov_mod / 20, 0)
				mvector3.lerp(lerped_offset_vector, template_data.camera_offset:rotate_with(self._camera_values.rot_target), self._item_size_offset, lerp_value) -- Averaging position between item and camera.

				mvector3.rotate_with(lerped_offset_vector, self._camera_values.rot_target:inverse())
				mvector3.set_y(lerped_offset_vector, template_data.camera_offset.y) -- Cancel out forward movement.
				mvector3.rotate_with(lerped_offset_vector, self._camera_values.rot_target)

				mvector3.add(camera_position, lerped_offset_vector)

				self._camera_values.pos_target = camera_position
			end
		end
	end
end

function IngameItemMenuSceneManager:_release_grab()
	self._grabbed = false
end

function IngameItemMenuSceneManager:_release_move_grab()
	self._move_grabbed = false
end

function IngameItemMenuSceneManager:controller_move(x, y)
	if self._item_unit and alive(self._item_unit.unit) then
		local diff = -y * 90
		self._item_yaw = (self._item_yaw + x * 75) % 360
		local yaw_sin = math.sin(self._item_yaw)
		local yaw_cos = math.cos(self._item_yaw)
		local treshhold = math.sin(45)

		if yaw_cos <= -treshhold or yaw_cos >= treshhold then
			self._item_pitch = math.clamp(self._item_pitch + diff * yaw_cos, -30, 30)
		end

		if yaw_sin <= -treshhold or yaw_sin >= treshhold then
			self._item_roll = math.clamp(self._item_roll - diff * yaw_sin, -30, 30)
		end

		self:_update_item_pos_rot(true, true)
	end

	self._grabbed = true
end

function IngameItemMenuSceneManager:stop_controller_move()
	self._grabbed = false
end

function IngameItemMenuSceneManager:mouse_pressed(o, button, x, y)
	if IngameItemMenuSceneManager.super.mouse_pressed(self, o, button, x, y) then return end

	if not self._use_grab then
		return
	end

	if button == Idstring("0") then
		if self._grab:inside(x, y) then
			self._grabbed = true
			self._grabbed_current_x = x
			self._grabbed_current_y = y

			return false
		end
	elseif self._can_move_item and button == Idstring("1") and self._grab:inside(x, y) then
		self._move_grabbed = true
		self._move_grabbed_current_x = x
		self._move_grabbed_current_y = y

		return false
	end
end

function IngameItemMenuSceneManager:mouse_released(o, button, x, y)
	if button == Idstring("0") then
		self:_release_grab()
	elseif button == Idstring("1") then
		self:_release_move_grab()
	end
end

function IngameItemMenuSceneManager:mouse_moved(o, x, y)
	if managers.menu_component:input_focus() == true or managers.menu_component:input_focus() == 1 then
		return false, "arrow"
	end

	if self._grabbed then
		if self._item_unit and alive(self._item_unit.unit) then
			local diff = (y - self._grabbed_current_y) / 4
			self._item_yaw = (self._item_yaw + (x - self._grabbed_current_x) / 4) % 360
			local yaw_sin = math.sin(self._item_yaw)
			local yaw_cos = math.cos(self._item_yaw)
			local treshhold = math.sin(45)

			if yaw_cos <= -treshhold or yaw_cos >= treshhold then
				self._item_pitch = math.clamp(self._item_pitch + diff * yaw_cos, -50, 50)
			end

			if yaw_sin <= -treshhold or yaw_sin >= treshhold then
				self._item_roll = math.clamp(self._item_roll - diff * yaw_sin, -50, 50)
			end

			self:_update_item_pos_rot(true, true)
		end

		self._grabbed_current_x = x
		self._grabbed_current_y = y

		return true, "grab"
	elseif self._move_grabbed and self._item_unit and alive(self._item_unit.unit) then
		local diff_x = (x - self._move_grabbed_current_x) / 10
		local diff_y = (y - self._move_grabbed_current_y) / 10
		local move_v = Vector3(diff_x, 0, -diff_y):rotate_with(self._camera_object:rotation())

		mvector3.add(self._item_base_pos, move_v)

		self:_update_item_pos_rot(true, false)

		self._move_grabbed_current_x = x
		self._move_grabbed_current_y = y

		return true, "grab"
	end

	if self._use_grab and self._grab:inside(x, y) then
		return true, "hand"
	end
end