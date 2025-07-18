local HAS_WEAPONLIB = BeardLib.Frameworks.Base:GetModByName("WeaponLib") and true or false


Hooks:PostHook(PlayerStandard,"exit","ma40_exit_state",function(self)
	if not HAS_WEAPONLIB then
		-- switch states; assume exit steelsight, stop hud overlay
		managers.hud:hide_ma40_overlay()
	end
end)

local function set_viewmodel_visible(state,visible)
	local fp = state._camera_unit
	fp:set_visible(visible)
	for unit_id, unit_entry in pairs(fp:spawn_manager():spawned_units()) do
		if alive(unit_entry.unit) then
			unit_entry.unit:set_visible(visible)
		end
	end
end

Hooks:PostHook(PlayerStandard,"_start_action_steelsight","ma40_start_steelsight",function(self,t,gadget_state)
	if self._state_data.in_steelsight and not HAS_WEAPONLIB then
		local weap_base = self._equipped_unit:base()
		if weap_base and weap_base._scope_overlay then
			if not weap_base._steelsight_weapon_visible then
				set_viewmodel_visible(self,false)
				weap_base:set_visibility_state(false)
				weap_base:update_visibility_state()
			end
			managers.hud:set_ma40_overlay(weap_base._scope_overlay)
			managers.hud:start_ma40_overlay()
		end
	end
end)

Hooks:PostHook(PlayerStandard,"_end_action_steelsight","ma40_stop_steelsight",function(self,t)
	if not HAS_WEAPONLIB then
		local weap_base = self._equipped_unit:base()
		if weap_base and weap_base._scope_overlay then 
			managers.hud:stop_ma40_overlay()
			if not weap_base._steelsight_weapon_visible then
				set_viewmodel_visible(self,true)
				weap_base:set_visibility_state(true)
				weap_base:update_visibility_state()
			end
		else
			managers.hud:hide_ma40_overlay()
		end
	end
end)