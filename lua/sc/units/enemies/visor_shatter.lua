local ids_func = Idstring
local table_contains = table.contains
local old1 = CopDamage._check_special_death_conditions

local big_idstring_table = {
	ids_func("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy"),
	ids_func("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
}	
function CopDamage:_check_special_death_conditions(...)
	if tostring(self._unit:base()._tweak_table) == "taser" then
		return
	end
	return old1(self, ...)
end

local old2 = CopDamage._dismember_body_part

function CopDamage:_dismember_body_part(...)
	if tostring(self._unit:base()._tweak_table) == "taser" then
		return
	end
	return old2(self, ...)
end
Hooks:PreHook( CopDamage, "_spawn_head_gadget", "smash_generics", function(self, params)
	if not self._head_gear then
		return
	end

	local my_unit = self._unit

	if not table_contains(big_idstring_table, my_unit:name()) then
		return
	end
	
	local head_obj = ids_func("Head")
	local head_object_get = my_unit:get_object(head_obj)
	
	if not head_object_get then
		return
	end
	
	local world_g = World		
	local sound_ext = my_unit:sound()	
	
	world_g:effect_manager():spawn({
		effect = ids_func("effects/particles/bullet_hit/glass_breakable/bullet_hit_glass_breakable"),
		parent = head_object_get		
	})			
	
	sound_ext:play("swat_heavy_visor_shatter", nil, nil)
	sound_ext:play("swat_heavy_visor_shatter", nil, nil)
	sound_ext:play("swat_heavy_visor_shatter", nil, nil)
end)
