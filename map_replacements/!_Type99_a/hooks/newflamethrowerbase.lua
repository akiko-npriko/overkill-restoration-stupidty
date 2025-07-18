Hooks:PostHook(NewFlamethrowerBase, "clbk_assembly_complete", "Type99inc_Init", function(self)
	if table.contains(self._blueprint, "wpn_fps_fla_type99inc_rec") then
		self:weapon_tweak_data().animations.reload_name_id = "type99inc"
		self:weapon_tweak_data().use_stance = "type99inc"
		self:weapon_tweak_data().weapon_hold = "type99inc"
	end
end)