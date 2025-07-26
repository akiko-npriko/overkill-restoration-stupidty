IngameWeaponMenuSceneManager = IngameWeaponMenuSceneManager or class(IngameItemMenuSceneManager)

function IngameWeaponMenuSceneManager:init(unit)
	IngameWeaponMenuSceneManager.super.init(self, unit)

	self._scene_templates.blackmarket = {}

	self._scene_templates.blackmarket_item = {}
	self._scene_templates.blackmarket_item.hide_player_fps = true
	self._scene_templates.blackmarket_item.use_own_camera = true
	self._scene_templates.blackmarket_item.fov = 40
	self._scene_templates.blackmarket_item.camera_offset = Vector3(0,-200,0)
	self._scene_templates.blackmarket_item.reference_object = "reference_blackmarket_item"

	self._scene_templates.blackmarket_item.use_grab = true
	self._scene_templates.blackmarket_item.can_change_fov = true

	self._scene_templates.blackmarket_item.lights = {
		self:_create_light({
			far_range = 270,
			specular_multiplier = 155,
			color = Vector3(0.86, 0.67, 0.31) * 3,
			position = Vector3(160, -130, 150),
			reference_object = "reference_blackmarket_item"
		}),
		self:_create_light({
			far_range = 270,
			specular_multiplier = 155,
			color = Vector3(0.86, 0.67, 0.41) * 2,
			position = Vector3(50, -150, 150),
			reference_object = "reference_blackmarket_item"
		}),
		self:_create_light({
			far_range = 270,
			specular_multiplier = 155,
			color = Vector3(0.86, 0.67, 0.41) * 2,
			position = Vector3(160, 0, 150),
			reference_object = "reference_blackmarket_item"
		}),
		self:_create_light({
			far_range = 250,
			specular_multiplier = 55,
			color = Vector3(0.5, 1.5, 2) * 2,
			position = Vector3(50, -100, 210),
			reference_object = "reference_blackmarket_item"
		}),
		self:_create_light({
			far_range = 370,
			specular_multiplier = 55,
			color = Vector3(1, 0.4, 0.04) * 1.5,
			position = Vector3(200, 60, 110),
			reference_object = "reference_blackmarket_item"
		})
	}

	self._scene_templates.blackmarket_crafting = {}
	self._scene_templates.blackmarket_crafting.hide_player_fps = true
	self._scene_templates.blackmarket_crafting.use_own_camera = true
	self._scene_templates.blackmarket_crafting.fov = 40
	self._scene_templates.blackmarket_crafting.camera_offset = Vector3(20,-200,-10)
	self._scene_templates.blackmarket_crafting.reference_object = "reference_blackmarket_crafting"

	self._scene_templates.blackmarket_crafting.use_grab = true
	self._scene_templates.blackmarket_crafting.can_change_fov = true
	self._scene_templates.blackmarket_crafting.disable_rotate = true

	self._scene_templates.blackmarket_weapon_color = deep_clone(self._scene_templates.blackmarket_crafting)
	self._scene_templates.blackmarket_weapon_color.camera_offset = Vector3(10,-240,-25)
end

function IngameWeaponMenuSceneManager:spawn_item_weapon(factory_id, blueprint, cosmetics, texture_switches, custom_data)
	local factory_weapon = tweak_data.weapon.factory[factory_id]
	local ids_unit_name = Idstring(factory_weapon.unit)

	if not managers.dyn_resource:is_resource_ready(Idstring("unit"), ids_unit_name, DynamicResourceManager.DYN_RESOURCES_PACKAGE) then
		managers.dyn_resource:load(Idstring("unit"), ids_unit_name, DynamicResourceManager.DYN_RESOURCES_PACKAGE, false)
	end

	self._item_pos = custom_data and custom_data.item_pos or Vector3(0, 0, 200)

	mrotation.set_zero(self._item_rot_mod)

	self._item_yaw = custom_data and custom_data.item_yaw or 0
	self._item_pitch = 0
	self._item_roll = 0

	mrotation.set_zero(self._item_rot)

	local function spawn_weapon(pos, rot)
		local w_unit = World:spawn_unit(ids_unit_name, pos, rot)

		w_unit:base():set_factory_data(factory_id)
		w_unit:base():set_cosmetics_data(cosmetics)
		w_unit:base():set_texture_switches(texture_switches)

		if blueprint then
			w_unit:base():assemble_from_blueprint(factory_id, blueprint)
		else
			w_unit:base():assemble(factory_id)
		end

		w_unit:base():tweak_data_anim_stop("unequip")
		w_unit:base():tweak_data_anim_play("equip")
		w_unit:set_enabled(true)
		w_unit:base():on_enabled()

		return w_unit
	end

	local new_unit = spawn_weapon(self._item_pos, self._item_rot)
	local second_unit = nil

	if new_unit:base().AKIMBO then
		second_unit = spawn_weapon(self._item_pos + self._item_rot:x() * -10 + self._item_rot:z() * -7 + self._item_rot:y() * -5, self._item_rot * Rotation(0, 8, -10))

		new_unit:link(new_unit:orientation_object():name(), second_unit)
	end

	custom_data = custom_data or {}
	custom_data.id = managers.weapon_factory:get_weapon_id_by_factory_id(factory_id)

	self:_set_item_unit(new_unit, nil, nil, nil, second_unit, custom_data)
	mrotation.set_yaw_pitch_roll(self._item_rot_mod, 90, 0, 0)

	return new_unit
end

function IngameWeaponMenuSceneManager:set_character_equipped_weapon(unit, factory_id, blueprint, type, cosmetics) end

function IngameWeaponMenuSceneManager:update_weapon_texture_switches(factory_id, texture_switches) end

function IngameWeaponMenuSceneManager:get_crafting_custom_data()
	return {
		scene_template = "blackmarket_crafting",
		item_yaw = self._current_scene_template == "blackmarket_crafting" and self._item_yaw
	}
end