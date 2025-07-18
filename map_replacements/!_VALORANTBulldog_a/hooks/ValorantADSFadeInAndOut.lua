local ids_intensity = Idstring("intensity") -- IDString for (name="intensity") in material_config

-- Dont replace, extend, forgot how BLT does it
function WeaponSecondSight:init( unit )

	-- Get material for reddot
	local materials	= self._unit:get_objects_by_type( IDS_MATERIAL )
	for _, material in ipairs( materials ) do
		if material:name() == Idstring("gfx_reddot")
		and material:variable_exists( ids_intensity )
		then
			self._gfx_reddot_material	= material									-- name="gfx_reddot" in material_config
			self._init_intensity		= material:get_variable( ids_intensity )	-- Initial intensity from the reddot
		end
	end

	self._glass_anim_mul = 0	-- This is the material opacity multiplier
	self._glass_anim_func = nil	-- Exist, this will be given a function to update with
end


-- Dont replace, extend, forgot how BLT does it
function WeaponSecondSight:update( unit, t, dt )
	if self._glass_anim_func then
		self._glass_anim_func( t, dt )
	end
end

-- Dont replace, extend, forgot how BLT does it
-- Activator for animation, True = FWD-100%, False = BWD-0%
function WeaponSecondSight:set_state( on, sound_source, current_state )
	self._unit:set_extension_update_enabled( "base", true ) -- start updates
	
	self._glass_anim_func = on and self._upd_glass_anim_fwd or self._upd_glass_anim_bwd
end


-- Reverse material animation
function WeaponSecondSight:_upd_glass_anim_bwd( t, dt )
	self._glass_anim = math.max( self._glass_anim - dt, 0 )
	
	self._gfx_reddot_material:set_variable( ids_alpha_ref, self._init_intensity * self._glass_anim ) -- Update material
	
	if self._glass_anim == 0 then
		self._unit:set_extension_update_enabled( "base", false ) -- end updates
		self._glass_anim_func = nil
	end
end

-- Forward material animation
function WeaponSecondSight:_upd_glass_anim_fwd( t, dt )
	self._glass_anim = math.min( self._glass_anim + dt, 1 )
	
	self._gfx_reddot_material:set_variable( ids_alpha_ref, self._init_intensity * self._glass_anim ) -- Update material
	
	if self._glass_anim == 1 then
		self._unit:set_extension_update_enabled( "base", false ) -- end updates
		self._glass_anim_func = nil
	end
end