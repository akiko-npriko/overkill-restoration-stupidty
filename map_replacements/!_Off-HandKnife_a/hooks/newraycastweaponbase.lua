local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data
function NewRaycastWeaponBase:weapon_tweak_data(...)
	local weapon_tweak_data = old_weapon_tweak_data(self, ...)
	
	if not self._parts then
		return weapon_tweak_data 
	end
	
	if not weapon_tweak_data.animations or not weapon_tweak_data.animations.knife_anim then
		return weapon_tweak_data
	end
	
	local knife_list = {
		wpn_fps_pis_usp_knife_rambo = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_mel_rambo/wpn_fps_mel_rambo",
		wpn_fps_pis_usp_knife_bayonet = "units/pd2_dlc_gage_assault/weapons/wpn_fps_mel_bayonet/wpn_fps_mel_bayonet",
		wpn_fps_pis_usp_knife_sword = "units/pd2_dlc_pn2/weapons/wpn_fps_mel_sword/wpn_fps_mel_sword",
		wpn_fps_pis_usp_knife_oxide = "units/pd2_dlc_grv/weapons/wpn_fps_mel_oxide/wpn_fps_mel_oxide",
		wpn_fps_pis_usp_knife_freedom = "units/pd2_dlc_gage_historical/weapons/wpn_fps_mel_freedom/wpn_fps_mel_freedom",
		wpn_fps_pis_usp_knife_kabar_tanto = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_mel_kabar_tanto/wpn_fps_mel_kabar_tanto",
		wpn_fps_pis_usp_knife_kabar = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_mel_kabar/wpn_fps_mel_kabar",
		wpn_fps_pis_usp_knife_wing = "units/pd2_dlc_opera/weapons/wpn_fps_mel_wing/wpn_fps_mel_wing",
		wpn_fps_pis_usp_knife_km2000 = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_mel_km2000/wpn_fps_mel_km2000",
		wpn_fps_pis_usp_knife_ballistic = "units/pd2_dlc_coco/weapons/wpn_fps_mel_ballistic/wpn_fps_mel_ballistic",
		wpn_fps_pis_usp_knife_switchblade = "units/pd2_dlc_casino/weapons/wpn_fps_mel_switchblade/wpn_fps_mel_switchblade",
		wpn_fps_pis_usp_knife_x46 = "units/pd2_dlc_gage_assault/weapons/wpn_fps_mel_x46/wpn_fps_mel_x46",
		wpn_fps_pis_usp_knife_chef = "units/pd2_halloween/weapons/wpn_fps_mel_chef/wpn_fps_mel_chef",
		wpn_fps_pis_usp_knife_fairbair = "units/pd2_dlc_gage_historical/weapons/wpn_fps_mel_fairbair/wpn_fps_mel_fairbair",
		wpn_fps_pis_usp_knife_aziz = "units/pd2_dlc_flm/weapons/wpn_fps_mel_aziz/wpn_fps_mel_aziz",
		wpn_fps_pis_usp_knife_toothbrush_shiv = "units/pd2_crimefest_2014/oct27/weapons/wpn_fps_mel_toothbrush_shiv/wpn_fps_mel_toothbrush_shiv",
	}
	
	local knife_id = ""
	for id, part_unit in pairs(knife_list) do
		if self._parts[id] then
			knife_id = id
			break
		end
	end

	if knife_id ~= "" then
	
		weapon_tweak_data.animations.reload_name_id = weapon_tweak_data.animations.knife_anim
		weapon_tweak_data.weapon_hold = "pistolknife"
		weapon_tweak_data.animations.reload_knife_shell_data = {
			align = "left",
			unit_name = knife_list[knife_id]
		}
		
	end
	
	return weapon_tweak_data
	
end
 
function NewRaycastWeaponBase:knife_shell_data()
	
	--log("knife_shell_data called")
	local reload_knife_shell_data = self:weapon_tweak_data().animations.reload_knife_shell_data
		
	if reload_knife_shell_data then
		local knife_unit = reload_knife_shell_data.unit_name or "units/payday2/weapons/wpn_fps_shell/wpn_fps_shell"
		local knife_align = reload_knife_shell_data.align or "left"
		return {unit_name = knife_unit, align = knife_align}
	else
		return nil
	end
	
end