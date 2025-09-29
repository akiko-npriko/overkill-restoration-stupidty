CopActionAct._act_redirects.script = {
	"attached_collar_enter",
	"suppressed_reaction",
	"surprised",
	"hands_up",
	"hands_back",
	"tied",
	"stand_tied",
	"tied_all_in_one",
	"drop",
	"panic",
	"idle",
	"halt",
	"stand",
	"crouch",
	"revive",
	"untie",
	"arrest",
	"arrest_call",
	"gesture_stop",
	"sabotage_device_low",
	"sabotage_device_mid",
	"sabotage_device_high",
	"so_civ_dummy_act_loop",
	"dizzy",
	"cmd_get_up",
	"cmd_stop",
	"cmd_down",
	"cmd_gogo",
	"cmd_point"
}

local _play_anim_orig = CopActionAct._play_anim
function CopActionAct:_play_anim()
	local result = _play_anim_orig(self)
	-- act actions disable the flashlight if it needs to be done from idle, which generally means specialobjectives
	if result and self._action_desc.needs_full_blend and self._unit:inventory():equipped_unit() and not self._ext_movement:cloaked() then
		self._flashlight_disabled = true
		self._unit:inventory():equipped_unit():base():set_flashlight_enabled(false)
	end

	return result
end

Hooks:PostHook(CopActionAct, "on_exit", "res_on_exit", function(self)
	if self._flashlight_disabled and self._unit:inventory():equipped_unit() and not self._unit:movement():cool() then
		self._unit:inventory():equipped_unit():base():set_flashlight_enabled(true)
	end
end)

--Hoppip Useful Bot Function (might be in wrong place... bleh)
if not Network:is_server() then
	return
end
local sabotage_actions = {
	untie = true,
	sabotage_device_low = true,
	sabotage_device_mid = true,
	sabotage_device_high = true,
	e_so_disarm_bomb = true,
	e_so_push_button_low = true,
	e_so_low_kicks = true,
	e_so_stomp = true,
	e_so_tube_interact = true,
	e_so_balloon = true,
	e_so_plant_c4_low = true,
	e_so_plant_c4_hi = true,
	e_so_interact_mid = true,
	e_so_plant_c4_floor = true,
	e_so_pull_lever = true,
	e_so_pull_lever_var2 = true,
	e_so_press_button_mid = true,
	e_so_ntl_lever_press = true,
	e_so_release_hostage_back = true,
	e_so_release_hostage_left = true,
	e_so_release_hostage_right = true
}

-- Make bots aware of sabotaging enemies
Hooks:PostHook(CopActionAct, "init", "init_ub", function (self)
	self._enter_t = TimerManager:game():time()
	if sabotage_actions[self._action_desc.variant] then
		self._is_sabotaging_action = true
		restoration:usefulbot_force_attention(self._unit)
	end
end)
