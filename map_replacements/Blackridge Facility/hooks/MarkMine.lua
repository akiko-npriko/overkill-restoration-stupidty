return function(self)
    --[[local orientation = self._values.position, self._values.rotation, 0
    local unit = TripMineBase.spawn(self._values.position, self._values.rotation, true, managers.player:player_unit())

    unit:base():set_active(true, managers.player:player_unit())
    unit:base():_set_armed(false)
    unit:contour():remove("deployable_interactable", true)
    unit:contour():remove("deployable_active", true)
    unit:interaction():set_disabled(true)
    return true --execute on executed]]
end