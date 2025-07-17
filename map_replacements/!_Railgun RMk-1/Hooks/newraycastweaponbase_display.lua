Hooks:PostHook( NewRaycastWeaponBase, "set_scope_range_distance", "railgun_rangefinder", function(self)
	if self._scopes and self._parts then
		local part
		
		for i, part_id in ipairs(self._scopes) do
			part = self._parts[part_id]
			
			if part and part.unit:digital_gui_range() then
				part.unit:digital_gui_range():number_set(distance and math.round(distance) or false, false)
				part.unit:get_object(Idstring("g_display")):set_local_position(Vector3(1, 0, 12))
				part.unit:digital_gui_range():set_visible(true)
			end
			if part and part.unit:digital_gui_scope() then
				part.unit:digital_gui_scope():number_set(distance and math.round(distance) or false, false)
				part.unit:get_object(Idstring("g_display_upper")):set_local_position(Vector3(0, 0, 0))
				--part.unit:digital_gui_scope():set_visible(true)
			end
			
		end
		
	end
end)