local THIS_VERSION = 4


local debug_mode = false
local function debug_log(...)
	if debug_mode then 
		return _G.Log or _G.log
	end
end

if MisriahAmmoGui and MisriahAmmoGui.VERSION and (MisriahAmmoGui.VERSION >= THIS_VERSION) then 
	log("Loading MisriahAmmoGui v" .. tostring(THIS_VERSION) .. " skipped; MisriahAmmoGui version " .. tostring(MisriahAmmoGui.VERSION) .. " already exists")
	return
end

MisriahAmmoGui = MisriahAmmoGui or class()

MisriahAmmoGui.VERSION = THIS_VERSION

function MisriahAmmoGui:init(unit)
	self._unit = self._unit or unit
	self._gui_object = self._gui_object or "a_counter"
	--ammo counter text
	self.font_name = self.font_name or "fonts/font_medium_shadow_mf"
	self.font_size = self.font_size or 64
	self.font_color = self.font_color or "ffffff" -- was "42b2bb"
	self._font_color = Color(self.font_color)
	self.font_kern = self.font_kern or 0
	self.font_offset_x = self.font_offset_x or 0
	self.font_offset_y = self.font_offset_y or 0 -- -15
	self.font_blend_mode = self.font_blend_mode or "normal"
	if self.font_monospace == nil then 
		self.font_monospace = false
	end
	self.halign = self.halign or "left"
	self.valign = self.valign or "center"
	
	self.num_characters = self.num_characters or 2
	self.max_counter_value = self.max_counter_value or (math.pow(10,self.num_characters) - 1)
	
	--compass
	if self.compass_enabled == nil then 
		self.compass_enabled = false
	end
	if self.compass_precision == nil then 
		self.compass_precision = 45 --degrees to visually snap/round to; set to nil or false for perfect precision
	end
	self.compass_center_x = self.compass_center_x or (self.PANEL_WIDTH / 2)
	self.compass_center_y = self.compass_center_y or (self.PANEL_HEIGHT / 2)
	self.compass_w = self.compass_w or 56
	self.compass_h = self.compass_h or 96
	self.compass_bitmap = self.compass_bitmap or ""
	self.compass_color = self.compass_color or "ffffff"
	self._compass_color = Color(self.compass_color)
	
	--applied before rotation
	self.local_offset_position_x = self.local_offset_position_x
	self.local_offset_position_y = self.local_offset_position_y
	self.local_offset_position_z = self.local_offset_position_z
	
	--applied respective to rotation
	self.offset_position_x = self.offset_position_x or 0
	self.offset_position_y = self.offset_position_y or 0
	self.offset_position_z = self.offset_position_z or 0
	
	self.offset_rotation_yaw = self.offset_rotation_yaw or 0
	self.offset_rotation_pitch = self.offset_rotation_pitch or 0
	self.offset_rotation_roll = self.offset_rotation_roll or 0
	
	self.PANEL_WIDTH = self.PANEL_WIDTH or 100
	self.PANEL_HEIGHT = self.PANEL_HEIGHT or 100
	self.WORLD_WIDTH = self.WORLD_WIDTH or 2
	self.WORLD_HEIGHT = self.WORLD_HEIGHT or 2
	
	self._new_gui = World:gui()
	
	local object_name = self._gui_object 
	debug_log("MisriahAmmoGui: " .. tostring(object_name or "ERROR bad object name"))
	local object_ids = object_name and Idstring(object_name)
	debug_log("MisriahAmmoGui: " .. tostring(object_ids or "ERROR bad object ids"))
	local object = object_ids and self._unit:get_object(object_ids)
	debug_log("MisriahAmmoGui: " .. tostring(object or ("ERROR bad object " .. tostring(object_name))))
	if not object then 
		object = self._unit:orientation_object()
		debug_log("MisriahAmmoGui: defaulting to orientation object")
	end
	if object then 
		self:add_workspace(object)
		self._parent_object = object
		
		self._unit:set_extension_update_enabled(Idstring("misriah_ammo_counter"), self.compass_enabled)
	end
end

function MisriahAmmoGui:add_workspace(gui_object)
	local onscreen_w = self.WORLD_WIDTH
	local onscreen_h = self.WORLD_HEIGHT
	local actual_w = self.PANEL_WIDTH
	local actual_h = self.PANEL_HEIGHT
	
	local ra = gui_object:rotation()
	
	local rb = Rotation(self.offset_rotation_yaw,self.offset_rotation_pitch,self.offset_rotation_roll)
	
	local rot = Rotation(ra:yaw() + rb:yaw(),ra:pitch() + rb:pitch(),ra:roll() + rb:roll())
	
	local x_axis = Vector3(onscreen_w,0,0)
	
	mvector3.rotate_with(x_axis,rot)
	
	local y_axis = Vector3(0,-onscreen_h,0)
	
	mvector3.rotate_with(y_axis,rot)
	
	local center = Vector3(onscreen_w / 2,onscreen_h / 2,0)
	
	mvector3.rotate_with(center,rot)
	
	local offset = Vector3(self.offset_position_x,self.offset_position_y,self.offset_position_z)
	
	mvector3.rotate_with(offset,rot)
	
	local position = gui_object:position() + Vector3(self.local_offset_position_x,self.local_offset_position_y,self.local_offset_position_z)
	
	self._ws = self._new_gui:create_world_workspace(actual_w,actual_h,position,x_axis,y_axis)
	
	self._ws:set_linked(actual_w,actual_h,gui_object,position - center + offset,x_axis,y_axis)
	
	self._panel = self._ws:panel():panel({
		name = "ammo_counter_panel",
		layer = 1
	})
	
	self._text = self._panel:text({
		name = "text",
		font = self.font_name,
		font_size = self.font_size,
		text = "00",
		layer = 2,
		kern = self.font_kern,
		color = self._font_color,
		monospace = self.font_monospace,
		x = self.font_offset_x,
		y = self.font_offset_y,
		blend_mode = self.font_blend_mode,
		align = self.halign,
		vertical = self.valign or "center"
	})
	
	self._compass_bitmap = self._panel:bitmap({
		name = "compass_bitmap",
		texture = self.compass_bitmap,
		w = self.compass_w,
		h = self.compass_h,
		color = self._compass_color,
		visible = self.compass_enabled
	})
	self._compass_bitmap:set_center(self.compass_center_x,self.compass_center_y)
	
	self._panel:rect({
		name = "debug_rect",
		color = Color.red,
		visible = debug_mode,
		alpha = 1,
		layer = 1
	})
end

function MisriahAmmoGui:update(unit,t,dt)
	if self.compass_enabled then 
		local rot = self._parent_object:rotation()
	--	local dir = rot:y()
	--	local pitch = rot:pitch() --could be useful if the grenade launcher ever makes it in
		local yaw = rot:yaw()
		if yaw then 
--			Console:SetTrackerValue("trackera",yaw)
			local compass_precision = self.compass_precision
			if compass_precision then 
				local rounded_yaw = math.round((yaw) / compass_precision) * compass_precision
				self:set_compass_yaw(rounded_yaw)
			else
				self:set_compass_yaw(yaw)
			end
			
		else
--			Console:SetTrackerValue("trackera","NULL")
		end
	end
end

function MisriahAmmoGui:set_compass_pitch()

end

function MisriahAmmoGui:set_compass_yaw(yaw)
	self._compass_bitmap:set_rotation(yaw)
	self._compass_bitmap:set_center(self.compass_center_x,self.compass_center_y)
end

function MisriahAmmoGui:set_ammo_count(num)
	self:set_ammo_counter_text(string.format("%02i",math.clamp(num,0,self.max_counter_value)))
end

function MisriahAmmoGui:set_ammo_counter_text(text)
	self._text:set_text(text)
end

function MisriahAmmoGui:set_visible(visible)
	if visible then 
		self._ws:show()
	else
		self._ws:hide()
	end
end

function MisriahAmmoGui:destroy()
	if alive(self._new_gui) and alive(self._ws) then
		self._unit:set_extension_update_enabled(Idstring("misriah_ammo_counter"), false)
		self._new_gui:destroy_workspace(self._ws)

		self._ws = nil
		self._new_gui = nil
	end
end

