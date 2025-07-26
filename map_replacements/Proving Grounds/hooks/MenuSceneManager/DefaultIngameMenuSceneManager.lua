DefaultIngameMenuSceneManager = DefaultIngameMenuSceneManager or class()

function DefaultIngameMenuSceneManager:init(unit)
	if unit:contour() then
		unit:contour():_upd_opacity(0)
	end

	self._unit = unit
	self._player_unit = managers.player:player_unit()
	self._player_camera = self._player_unit:camera():camera_object()

	self._current_scene_template = ""
	self._scene_templates = {}

	self._active_lights = {}
	self._fade_down_lights = {}

	self:_setup_camera()
	self._transition_time = nil

	self._can_change_fov = false
	self._change_fov_sensitivity = 1
end

function DefaultIngameMenuSceneManager:_create_light(params)
	local light = World:create_light("omni|specular")

	local light_origin = self._unit:position()

	if params.position then
		light_origin = light_origin + params.position:rotate_with(self._unit:rotation())
	end

	if params.reference_object then
		local ref_object = self._unit:get_object(Idstring(params.reference_object))

		if ref_object then
			light_origin = ref_object:position()

			if params.position then
				light_origin = light_origin + params.position:rotate_with(ref_object:rotation())
			end
		end
	end

	light:set_far_range(params.far_range or 200)
	light:set_color(params.color or Vector3())
	light:set_position(light_origin)
	light:set_enable(false)
	light:set_multiplier(0)
	light:set_specular_multiplier(params.specular_multiplier or 4)

	return light
end

function DefaultIngameMenuSceneManager:_setup_camera()
	if self._camera_values then
		return
	end

	local current_position = self._player_camera:position()
	local current_rotation = self._player_camera:rotation()
	local current_fov = self._player_camera:fov()

	self._camera_values = {
		pos_current = current_position,
		pos_target = current_position,
		rot_current = current_rotation,
		rot_target = current_rotation,
		fov_current = current_fov,
		fov_target = current_fov
	}

	self._camera_pos = current_position
	self._camera_rot = current_rotation
	self._camera_fov = current_fov

	self._camera_active = false

	self._camera_object = World:create_camera()

	self._camera_object:set_near_range(3)
	self._camera_object:set_far_range(250000)
	self._camera_object:set_position(self._camera_pos)
	self._camera_object:set_rotation(self._camera_rot)
	self._camera_object:set_fov(self._camera_fov)

	self._vp = managers.viewport:new_vp(0, 0, 1, 1, "player_menuscenemanager", CoreManagerBase.PRIO_DEFAULT - 1)
	self._vp:set_camera(self._camera_object)
end

function DefaultIngameMenuSceneManager:enable_camera()
	self._vp:set_active(true)
	self._camera_active = true

	self._camera_values.position_current = self._player_camera:position()
	self._camera_values.rotation_current = self._player_camera:rotation()
	self._camera_values.fov_current = self._player_camera:fov()

	self._camera_object:set_near_range(3)
	self._camera_object:set_far_range(250000)
	self._camera_object:set_fov(self._camera_values.fov_current)
	self._camera_object:set_position(self._camera_values.position_current)
	self._camera_object:set_rotation(self._camera_values.rotation_current)

	self._camera_values.disabled_at_next = false
end

function DefaultIngameMenuSceneManager:disable_camera()
	self._camera_active = false
	self:set_camera_pos_rot_fov(self._player_camera:position(), self._player_camera:rotation(), self._player_camera:fov(), true)
end

function DefaultIngameMenuSceneManager:set_camera_pos_rot_fov(pos, rot, fov, disabled_at_next)
	if pos then
		self._camera_values.pos_current = self._camera_object:position()
		self._camera_values.pos_target = pos
	end

	if rot then
		self._camera_values.rot_current = self._camera_object:rotation()
		self._camera_values.rot_target = rot
	end

	if fov then
		self._camera_values.fov_current = self._camera_object:fov()
		self._camera_values.fov_target = fov
	end

	self._camera_values.disabled_at_next = disabled_at_next or false
	self._transition_time = 0
end

local duration = tweak_data.player.TRANSITION_DURATION
function DefaultIngameMenuSceneManager:update(t, dt)
	if self._transition_time then
		self._transition_time = math.min(self._transition_time + dt, duration)

		local transition_percent = self._transition_time/duration

		if self._camera_values then
			local camera_interp_value = Easing.inout_quad(0, 1, transition_percent)

			mvector3.lerp(self._camera_pos, self._camera_values.pos_current, self._camera_values.pos_target, camera_interp_value)
			mrotation.slerp(self._camera_rot, self._camera_values.rot_current, self._camera_values.rot_target, camera_interp_value)
			self._camera_fov = math.lerp(self._camera_values.fov_current, self._camera_values.fov_target + (self._fov_mod or 0), camera_interp_value)
		end

		if self._fade_down_lights then
			local fade_down_interp_value = Easing.out_expo(0, 1, transition_percent)

			local fade_down = math.lerp(0.8, 0, fade_down_interp_value)
			for _, light in ipairs(self._fade_down_lights) do
				light:set_multiplier(fade_down)
			end
		end

		if self._active_lights then
			local fade_up_interp_value = Easing.in_expo(0, 1, transition_percent)

			local fade_up = math.lerp(0, 0.8, fade_up_interp_value)
			for _, light in ipairs(self._active_lights) do
				light:set_multiplier(fade_up)
			end
		end

		if self._transition_time == duration then
			self._transition_time = nil
		end
	else
		if self._camera_values then
			self._camera_pos = self._camera_values.pos_target
			self._camera_rot = self._camera_values.rot_target
			self._camera_fov = self._camera_values.fov_target + (self._fov_mod or 0)

			if self._camera_values.disabled_at_next then
				self._vp:set_active(false)
			end
		end
	end

	self._camera_object:set_position(self._camera_pos)
	self._camera_object:set_rotation(self._camera_rot)
	self._camera_object:set_fov(self._camera_fov)
end

DefaultIngameMenuSceneManager.get_current_scene_template = MenuSceneManager.get_current_scene_template
DefaultIngameMenuSceneManager.get_scene_template_data = MenuSceneManager.get_scene_template_data

function DefaultIngameMenuSceneManager:set_scene_template(template, data, custom_name, skip_transition)
	if not skip_transition then
		if (self._current_scene_template == template or self._current_scene_template == custom_name) then
			return true
		end

		self._current_scene_template = custom_name or template

		local template_data = data or self._scene_templates[template]

		if template_data then
			local new_head_stance = nil
			local new_fov = nil

			if template_data.use_own_camera and not self._camera_active then
				self:enable_camera()
			elseif not template_data.use_own_camera and self._camera_active then
				self:disable_camera()
			end

			if self._camera_active then
				local camera_position = self._camera_values.position_current
				local camera_rotation = self._camera_values.rotation_current
				local camera_fov = self._camera_values.fov_current

				if template_data.reference_object then
					local object = self._unit:get_object(Idstring(template_data.reference_object))

					if object then
						camera_position = object:position()
						camera_rotation = object:rotation()
					end
				end

				if template_data.camera_offset then
					mvector3.add(camera_position, template_data.camera_offset:rotate_with(camera_rotation))
				end

				if template_data.fov then
					camera_fov = template_data.fov
				end

				self:set_camera_pos_rot_fov(camera_position, camera_rotation, camera_fov)
			end

			self._can_change_fov = template_data.can_change_fov or false
			self._change_fov_sensitivity = template_data.change_fov_sensitivity or 1

			self._fov_mod = 0

			local fade_lights = {}

			for _, light in ipairs(self._fade_down_lights) do
				if light:multiplier() ~= 0 and template_data.lights and not table.contains(template_data.lights, light) then
					table.insert(fade_lights, light)
				end
			end

			for _, light in ipairs(self._active_lights) do
				table.insert(fade_lights, light)
			end

			self._fade_down_lights = fade_lights
			self._active_lights = {}

			if template_data.lights then
				for _, light in ipairs(template_data.lights) do
					light:set_enable(true)
					table.insert(self._active_lights, light)
				end
			end
		end
	end
end

function DefaultIngameMenuSceneManager:controller_zoom(x, y)
	self:change_fov("out", y * 20)
end

function DefaultIngameMenuSceneManager:change_fov(zoom, amount)
	if self._can_change_fov then
		if zoom == "in" then
			self._fov_mod = math.clamp((self._fov_mod or 0) + (amount or 0.45) * (self._change_fov_sensitivity or 1), tweak_data.gui.mod_preview_min_fov, tweak_data.gui.mod_preview_max_fov)
		elseif zoom == "out" then
			self._fov_mod = math.clamp((self._fov_mod or 0) - (amount or 0.45) * (self._change_fov_sensitivity or 1), tweak_data.gui.mod_preview_min_fov, tweak_data.gui.mod_preview_max_fov)
		end
	end
end

function DefaultIngameMenuSceneManager:mouse_pressed(o, button, x, y)
	local input_focus = managers.menu_component:input_focus()

	if not input_focus then
		local node_gui = managers.menu:active_menu() and managers.menu:active_menu().renderer:active_node_gui()

		if node_gui and node_gui.input_focus then
			input_focus = node_gui:input_focus()
		end
	end

	if input_focus == true or input_focus == 1 then
		return true
	end

	if button == Idstring("mouse wheel down") then
		self:change_fov("in")
	elseif button == Idstring("mouse wheel up") then
		self:change_fov("out")
	end
end

function DefaultIngameMenuSceneManager:pre_unload()
	if alive(self._camera_object) then
		World:delete_camera(self._camera_object)
	end

	self._vp:destroy()

	if self._unit:contour() then
		self._unit:contour():_upd_opacity(1)
	end
end

local default_blank_methods = {
	"unload",
	"input_focus",
	"controller_move",
	"stop_controller_move",
	"stop_controller_zoom",
	"mouse_released",
	"mouse_moved",
	"infamy_card_shown",
	"workbench_room_name"
}
for _, method_name in pairs(default_blank_methods) do DefaultIngameMenuSceneManager[method_name] = function() return false end end