HD2OffensiveGrenade = HD2OffensiveGrenade or class(ArrowBase)

-- function HD2OffensiveGrenade:init(...)
-- 	HD2OffensiveGrenade.super.init(self, ...)
-- end

function HD2OffensiveGrenade:_on_collision(...)
	HD2OffensiveGrenade.super._on_collision(self, ...)

	local offensive_data = tweak_data.blackmarket.projectiles[self:get_name_id()].offensive or {}

	offensive_data.unit = self._unit
	offensive_data.position = self._unit:position()
	offensive_data.rotation = self._unit:rotation()
	
	HD2Offensive:throw(offensive_data)
end