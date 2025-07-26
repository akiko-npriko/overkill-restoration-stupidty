InventoryWeaponDummiesExt = InventoryWeaponDummiesExt or class()

function InventoryWeaponDummiesExt:init(unit)
	self._unit = unit

	self._amount = self.amount or 1
	self._prefix = self.prefix or "a_weapon_"
	self._category = self.category or "primaries"

	log("dummy time baby")

	self._attach_objects = {}
	for i=1, self._amount do
		local object_ids = Idstring(self._prefix .. tostring(i))
		local object = self._unit:get_object(object_ids)

		log("found " .. tostring(i))

		if object then
			table.insert(self._attach_objects, object)
		end
	end

	self:spawn_weapons()
end

function InventoryWeaponDummiesExt:spawn_weapons()
	for i, object in pairs(self._attach_objects) do
		local weapon = managers.blackmarket:get_crafted_category_slot(self._category, i)

		if weapon then
			local factory_id = weapon.factory_id
			log("spawning " .. factory_id)

			local blueprint = weapon.blueprint
			local cosmetics = weapon.cosmetics
			local texture_switches = managers.blackmarket:get_weapon_texture_switches(self._category, i, weapon)

			local factory_td = tweak_data.weapon.factory[factory_id]
			if tweak_data.weapon.factory[factory_id .. "_npc"] then
				factory_td = tweak_data.weapon.factory[factory_id .. "_npc"]
			elseif tweak_data.weapon.factory[factory_id .. "_crew"] then
				factory_td = tweak_data.weapon.factory[factory_id .. "_crew"]
			end

			local ids_unit_name = Idstring(factory_td.unit)

			if not managers.dyn_resource:is_resource_ready(Idstring("unit"), ids_unit_name, DynamicResourceManager.DYN_RESOURCES_PACKAGE) then
				managers.dyn_resource:load(Idstring("unit"), ids_unit_name, DynamicResourceManager.DYN_RESOURCES_PACKAGE, false)
			end

			local w_unit = World:spawn_unit(ids_unit_name, object:position(), object:rotation())

			w_unit:base():set_factory_data(factory_id)
			w_unit:base():set_cosmetics_data(cosmetics)

			if blueprint then
				w_unit:base():assemble_from_blueprint(factory_id, blueprint)
			else
				w_unit:base():assemble(factory_id)
			end

			w_unit:base():check_npc()

			w_unit:base():tweak_data_anim_stop("unequip")
			w_unit:base():tweak_data_anim_play("equip")
			w_unit:set_enabled(true)
			w_unit:base():on_enabled()

			w_unit:set_moving(true)

			self._unit:link(object:name(), w_unit, w_unit:orientation_object():name())

			-- w_unit:set_position(object:position())
			-- w_unit:set_rotation(object:rotation())
		end
	end
end