Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "hook_post_projectiles_init", function(self)
	self:add_custom_projectiles(self)
end)

function BlackMarketTweakData:add_custom_projectiles(self)
	self.projectiles.adaptive_plate = {
		name_id = "bm_adaptive_plate",
		desc_id = "bm_adaptive_plate_desc",
		custom = true,
		ignore_statistics = true,
		based_on = "chico_injector",
		--icon = "adaptive_plate",
		icon = "equipment_armor_kit",
		ability = "adaptive_plate",
		texture_bundle_folder = "adaptive_plate",
		base_cooldown = 60,
		max_amount = 4,
		sounds = {
			activate = "perkdeck_activate",
			cooldown = "perkdeck_cooldown_over"
		}
	}
	table.insert(self._projectiles_index,"adaptive_plate")
end