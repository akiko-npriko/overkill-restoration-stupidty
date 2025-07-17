Hooks:PostHook(PlayerManager, "update", "alcatraz_roach_radius_upd", function(self, t, dt)
if self:player_unit():inventory():equipped_unit():base()._factory_id == "wpn_fps_special_roach" then
    tweak_data.upgrades.explosive_bullet.feedback_range = 900
    tweak_data.upgrades.explosive_bullet.range = 900
else
    tweak_data.upgrades.explosive_bullet.feedback_range = 200
    tweak_data.upgrades.explosive_bullet.range = 200
end
end)