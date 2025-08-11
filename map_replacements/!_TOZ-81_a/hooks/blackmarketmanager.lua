local orig_melee_info = BlackMarketManager.equipped_melee_weapon_damage_info
function BlackMarketManager:equipped_melee_weapon_damage_info(lerp_value,...)
    local player = managers.player:player_unit()
    local player_state = player and player:movement():current_state() -- ATTENTION! if your mod crashes on this line, you are likely experiencing a vanilla crash or a crash unrelated to this mod.
    -- vanilla BlackMarketManager:equipped_melee_weapon_damage_info() does not include sanity checks for getting the player state
    -- so either this mod is outdated (unlikely), you are using an overhaul of some kind or have a similar mod conflict, or this crash occurs in vanilla.
    local bayonet_id = player_state and player_state:equipped_weapon_bayonet()
    if not bayonet_id then
        return orig_melee_info(self,lerp_value,...)
    end
    
    lerp_value = lerp_value or 0
    local melee_entry = self:equipped_melee_weapon()
    local stats = tweak_data.blackmarket.melee_weapons[melee_entry].stats

    if bayonet_id and melee_entry == "weapon" then
        stats = tweak_data.weapon.factory.parts[bayonet_id].stats
    end

    local dmg = math.lerp(stats.min_damage, stats.max_damage, lerp_value)
    local dmg_effect = dmg * math.lerp(stats.min_damage_effect, stats.max_damage_effect, lerp_value)

    return dmg, dmg_effect
end