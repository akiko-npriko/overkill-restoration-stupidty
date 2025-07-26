AccessWeaponMenuInteractionExt = AccessWeaponMenuInteractionExt or class(UseInteractionExt)

function AccessWeaponMenuInteractionExt:init(unit)
	AccessWeaponMenuInteractionExt.super.init(self, unit)

	self._tick_t = 0
	self._target = 60
	self._dst = 1000
	self._world_slotmask = managers.slot:get_mask("world_geometry")

	self._unit:set_extension_update_enabled(Idstring("interaction"), true)

	self._outlined = true
end

local offs = Vector3(0, 0, 1) * 200

function AccessWeaponMenuInteractionExt:update(unit, t, dt)
	self._tick_t = self._tick_t + 1

	if self._tick_t % self._target == 0 then
		local player_unit = managers.player:player_unit()

		if player_unit then
			local ignore_unit = {
				self._unit
			}
			local hit = World:raycast("ray", self._unit:position() + offs, player_unit:position() + offs, "slot_mask", self._world_slotmask, "ignore_unit", ignore_unit)

			if not hit and not self._outlined then
				self._outlined = true

				self:set_contour("standard_color")
			elseif hit and self._outlined then
				self._outlined = false

				self:set_contour("standard_color", 0)
			end
		end
	end
end

function AccessWeaponMenuInteractionExt:interact(player)
	AccessWeaponMenuInteractionExt.super.super.interact(self, player)

	managers.custom_safehouse:open_in_game_loadout(self._tweak_data.category or "primaries", self._unit)

	return true
end