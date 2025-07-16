Hooks:PostHook(WeaponFactoryTweakData, "create_ammunition", "create_ammunition_abbjsbadkjbbfiwujbew", function(self)
	
	local red =		"units/flare_gun_shot_shell/flare_gun_shot_shell"
	local blue =	"units/flare_gun_shot_shell_blue/flare_gun_shot_shell_blue"
	local green =	"units/flare_gun_shot_shell_green/flare_gun_shot_shell_green"
	local grey =	"units/flare_gun_shot_shell_grey/flare_gun_shot_shell_grey"
	local orange =	"units/flare_gun_shot_shell_orange/flare_gun_shot_shell_orange"
	local yellow =	"units/flare_gun_shot_shell_yellow/flare_gun_shot_shell_yellow"
	
	-- 000 Buck
	self.parts.wpn_fps_upg_a_custom.override = self.parts.wpn_fps_upg_a_custom.override or {}
	self.parts.wpn_fps_upg_a_custom.override.wpn_fps_sho_flare_gun_shot_shell = {unit = red}
	
	-- 000 Buck (Free)
	self.parts.wpn_fps_upg_a_custom_free.override = self.parts.wpn_fps_upg_a_custom_free.override or {}
	self.parts.wpn_fps_upg_a_custom_free.override.wpn_fps_sho_flare_gun_shot_shell = {unit = red}
	
	-- Flechette
	self.parts.wpn_fps_upg_a_piercing.override = self.parts.wpn_fps_upg_a_piercing.override or {}
	self.parts.wpn_fps_upg_a_piercing.override.wpn_fps_sho_flare_gun_shot_shell = {unit = grey}
	
	-- High Explosive
	self.parts.wpn_fps_upg_a_explosive.override = self.parts.wpn_fps_upg_a_explosive.override or {}
	self.parts.wpn_fps_upg_a_explosive.override.wpn_fps_sho_flare_gun_shot_shell = {unit = yellow}
	
	-- AP Slug
	self.parts.wpn_fps_upg_a_slug.override = self.parts.wpn_fps_upg_a_slug.override or {}
	self.parts.wpn_fps_upg_a_slug.override.wpn_fps_sho_flare_gun_shot_shell = {unit = green}

	-- Dragons Breath
	self.parts.wpn_fps_upg_a_dragons_breath.override = self.parts.wpn_fps_upg_a_dragons_breath.override or {}
	self.parts.wpn_fps_upg_a_dragons_breath.override.wpn_fps_sho_flare_gun_shot_shell = {unit = orange}
	
end)