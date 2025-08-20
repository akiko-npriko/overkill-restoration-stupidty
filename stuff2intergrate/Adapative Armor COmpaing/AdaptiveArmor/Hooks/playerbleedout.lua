Hooks:PostHook(PlayerBleedOut, "enter", "hook_post_bleedout_enter", function(self, state_data, enter_data)
	local pm = managers.player
	if pm:has_category_upgrade("player", "adaptive_plate_multiplier") then
		pm.adaptive_plate_stage = 0
	end
end)