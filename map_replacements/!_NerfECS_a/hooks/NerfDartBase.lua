NerfDartBase = NerfDartBase or class(ArrowBase)
NerfDartBase._all_darts = {}

local mvec1 = Vector3()
local mvec2 = Vector3()
local mvec3 = Vector3()
local mrot1 = Rotation()

local tmp_vel = Vector3()

local ids_pickup = Idstring("pickup")
NerfDartBase._NERF_CONTOUR_DELAY = 0.1
function NerfDartBase:init(...)
	--Network:detach_unit(self._unit)
	
	NerfDartBase.super.init(self,...)
	
	self._contour_opacity = 0
	table.insert(NerfDartBase._all_darts,1,self)
	
--	asdfasdf = self
	
	--self._orient_to_vel = true
end

function NerfDartBase:throw(...)
	NerfDartBase.super.throw(self, ...)	
	
	self._show_nerf_contour_clbk = "_show_nerf_contour_" .. tostring(self._unit:key())

	managers.enemy:add_delayed_clbk(self._show_nerf_contour_clbk, function()
		self._should_draw_oobb = managers.user:get_setting("throwable_contour") -- and self._is_pickup
		self._show_nerf_contour_clbk = nil
	end, TimerManager:game():time() + self._NERF_CONTOUR_DELAY)
	self._should_draw_oobb = nil
	
	local body = self._unit:body("dynamic_body")
	if body then
		-- link the unit to the physics dart so the pickup area is accurate to the dart's visual location
		-- (doing it here doesn't account for the unit's spawn offset position or something, so it's not perfectly aligned)
		self._unit:link(body:root_object():name(),self._unit,self._unit:orientation_object():name())
	end
end

function NerfDartBase:update(unit, t, dt,...)
	NerfDartBase.super.update(self,unit,t,dt,...)
	
	if self._should_draw_oobb then 
		-- supports different colors for pickup mode or not
		-- but let's just keep it the same color for both
		if self._is_pickup then
			self._unit:oobb():debug_draw(1,1,1)
		else
			self._unit:oobb():debug_draw(1,1,1)
		end
	end
	
--	if false and self._is_pickup then
--		local body = self._unit:body("dynamic_body")
--		if body then
--			-- can't link a unit to its own body, i think
--			-- so we'll just have to manually update its position
--			-- (which visually results in a one-frame delay between its body position and its unit position, but oh well)
--			self._unit:set_position(body:position())
--			if self._orient_to_vel then
--				self._unit:set_rotation(body:rotation())
--			end
--		end
--	end
end

-- uncomment to disable trail effect
--function NerfDartBase:add_trail_effect()
--end

function NerfDartBase:_attach_to_hit_unit(_,_)
	--Print("Bounce dart",self,string.format("%0.2f",Application:time()))
	
	self:reload_contour()
	self._unit:set_enabled(true)
	self:_set_body_enabled(true)
	self:_check_stop_flyby_sound(true)
	self:_kill_trail()
--	-- not needed since unit is linked to body now
--	mrotation.set_look_at(mrot1, self._col_ray.velocity, math.UP)
--	self._unit:set_rotation(mrot1)
--	local body = self._unit:body("dynamic_body")
--	if body then
--		self._unit:set_position(body:position())
--	end
	
	local body = self._unit:body("dynamic_body")
	if body then
		-- link the unit to the physics dart so the pickup area is accurate to the dart's visual location
		self._unit:link(body:root_object():name(),self._unit,self._unit:orientation_object():name())
	end
	self:_switch_to_pickup_delayed(true)
end

function NerfDartBase:_switch_to_pickup(dynamic)
	--print("NerfDartBase:_switch_to_pickup dynamic", dynamic)

	self._is_pickup = true
	self._is_pickup_dynamic = dynamic

	self._contour_opacity = 1
	self:reload_contour()
	

	self:_remove_switch_to_pickup_clbk()
	
	if dynamic then
		self._unit:unlink()
	end
	
	self._unit:set_slot(20)
	self._unit:set_enabled(true)
	self:_set_body_enabled(dynamic)
end

function NerfDartBase:reload_contour()
	if self._show_nerf_contour_clbk then
		managers.enemy:remove_delayed_clbk(self._show_nerf_contour_clbk)
		self._show_nerf_contour_clbk = nil
	end
	self._should_draw_oobb = managers.user:get_setting("throwable_contour")
	
	if self._unit:contour() then
		if managers.user:get_setting("throwable_contour") then
			self._unit:contour():add("deployable_selected")
			self._unit:contour():_upd_opacity(self._contour_opacity or 0)
		else
			self._unit:contour():remove("deployable_selected")
		end
	end
end

function NerfDartBase:pre_destroy(...)
	if self._show_nerf_contour_clbk then
		managers.enemy:remove_delayed_clbk(self._show_nerf_contour_clbk)
		self._show_nerf_contour_clbk = nil
	end
	
	for i=#NerfDartBase._all_darts,1,-1 do 
		if NerfDartBase._all_darts[i] == self then
			table.remove(NerfDartBase._all_darts,i)
			break
		end
	end
	return NerfDartBase.super.pre_destroy(self,...)
end

-- _G.testdart = World:spawn_unit(Idstring(tweak_data.blackmarket.projectiles.nerf_dart_standard.unit), managers.player:local_player():movement():m_head_pos(), Rotation(Vector3(), math.UP))
