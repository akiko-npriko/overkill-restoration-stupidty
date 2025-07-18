local hook_name,hook_class
if RequiredScript == "lib/units/weapon/menuraycastweaponbase" then
	hook_name = "menuraycastweaponbase"
	hook_class = MenuRaycastWeaponBase
else
	hook_name = "newraycastweaponbase"
	hook_class = NewRaycastWeaponBase
end

Hooks:PostHook(hook_class,"clbk_assembly_complete","misriahammogui_" .. hook_name .. "_on_assembly_complete",function(self,clbk,parts,blueprint)
	self.misriah_extensions = self.misriah_extensions or {}
	for id,part in pairs(parts) do 
		local td = tweak_data.weapon.factory.parts[id]
		if td then 
			if td.scope_overlay then
				self._scope_overlay = td.scope_overlay
			end
			if td.steelsight_weapon_visible ~= nil then
				self._steelsight_weapon_visible = td.steelsight_weapon_visible
			end
		end
		
		local misriah_icws = alive(part.unit) and part.unit:misriah_ammo_counter()
		if misriah_icws then 
			self.misriah_extensions[id] = misriah_icws
			misriah_icws:set_visible(true)
			
		end
	end
end)


Hooks:PostHook(hook_class,"_set_parts_visible","misriahammogui_" .. hook_name .. "_set_parts_visible",function(self,visible)
	if self.misriah_extensions then 
		for k,misriah_icws in pairs(self.misriah_extensions) do 
			misriah_icws:set_visible(visible)
		end
	end
end)

Hooks:PostHook(hook_class,"set_ammo_remaining_in_clip","misriahammogui_" .. hook_name .. "_set_ammo_counter",function(self,amount)
	if self.misriah_extensions then 
		for k,misriah_icws in pairs(self.misriah_extensions) do 
			misriah_icws:set_ammo_count(amount,self:get_ammo_max_per_clip())
		end
	end
end)
