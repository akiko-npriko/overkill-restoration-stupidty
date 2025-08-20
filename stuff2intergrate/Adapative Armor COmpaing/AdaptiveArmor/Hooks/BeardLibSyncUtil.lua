if not BeardLib then 
	Hooks:Add( "MenuManagerInitialize", "i_warned_you_when_installing_kingslayer", function(menu_manager)
		YOU_DID_NOT_READ_THE_INSTALLATION_INSTRUCTIONS()
	end)
end


--copypasted from BeardLib's Sync util
local Sync = BeardLib.Utils.Sync
function Sync:CleanOutfitString(str, is_henchman)
    local bm = managers.blackmarket
    local factory = tweak_data.weapon.factory
    if is_henchman and not bm.unpack_henchman_loadout_string then --thx ovk for the headaches henchman beta caused me <3
        is_henchman = false
    end
    local list = (is_henchman and bm.unpack_henchman_loadout_string) and bm:unpack_henchman_loadout_string(str) or bm:unpack_outfit_from_string(str)
    local mask = list.mask and tweak_data.blackmarket.masks[is_henchman and list.mask or list.mask.mask_id]
    if mask and mask.custom then
        local based_on = mask.based_on
        local mask_tweak = tweak_data.blackmarket.masks[based_on]
        if not mask_tweak or (mask.dlc and not managers.dlc:is_dlc_unlocked(mask_tweak.dlc)) then
            based_on = nil
        end

        local mask_id = based_on or "character_locked"
        if is_henchman then
            list.mask = mask_id
        else
            list.mask.mask_id = mask_id
        end
	end

    local pattern = is_henchman and list.mask_blueprint.pattern or list.mask.blueprint.pattern
	if pattern and tweak_data.blackmarket.textures[pattern.id].custom then
		pattern.id = "no_color_no_material"
	end

    local material = is_henchman and list.mask_blueprint.material or list.mask.blueprint.material
	if material and tweak_data.blackmarket.materials[material.id].custom then
		material.id = "plastic"
    end

    if list.primary and list.primary.cosmetics then
        local cosmetic_primary = tweak_data.blackmarket.weapon_skins[list.primary.cosmetics.id]
        if cosmetic_primary and cosmetic_primary.custom then
            list.primary.cosmetics = nil
        end
    end

    if list.secondary and list.secondary.cosmetics then
        local cosmetic_secondary = tweak_data.blackmarket.weapon_skins[list.secondary.cosmetics.id]
        if cosmetic_secondary and cosmetic_secondary.custom then
            list.secondary.cosmetics = nil
        end
    end

    if list.primary then
        local primary = is_henchman and list.primary or list.primary.factory_id
    	if tweak_data.weapon.factory[primary].custom then
            local based_on = self:GetBasedOnFactoryId(primary) or self.WeapConv[2]
            if is_henchman then
                list.primary = based_on
            else
                list.primary.factory_id = based_on
                list.primary.blueprint = factory[list.primary.factory_id].default_blueprint
            end
    	end
    end

	if not is_henchman then
		if list.secondary then
			local secondary = list.secondary.factory_id
			if factory[secondary].custom then
				list.secondary.factory_id = self:GetBasedOnFactoryId(secondary) or self.WeapConv[1]
				list.secondary.blueprint = factory[list.secondary.factory_id].default_blueprint
			end

			local melee = tweak_data.blackmarket.melee_weapons[list.melee_weapon]
			if melee and melee.custom then
				local based_on = melee.based_on
				local melee_tweak = tweak_data.upgrades.definitions[based_on]
				if not melee_tweak or (melee_tweak.dlc and not managers.dlc:is_dlc_unlocked(melee_tweak.dlc)) then
					based_on = nil
				end
				list.melee_weapon = based_on or "weapon"
			end

			for _, weap in pairs({list.primary, list.secondary}) do
				weap.blueprint = self:GetCleanedBlueprint(weap.blueprint, weap.factory_id)
			end
		end

--------------------------------------------------------
		--uncommenting this is the only change from BeardLib's versio
		-- -Offyerrocker
        list.grenade = self:GetSpoofedGrenade(list.grenade)
--------------------------------------------------------
		
    end

    local player_style = tweak_data.blackmarket.player_styles[list.player_style]
    if player_style then
        -- Got to do the checks individually, otherwise we can't have custom variations on non custom outfits.
        if player_style.custom then
            list.player_style = "continental" -- Sync an actual outfit to stop invisible bodies because of weird object sync.
        end

        if player_style.material_variations then
            local suit_variation = player_style.material_variations[list.suit_variation]
            if suit_variation and suit_variation.custom then
            	list.suit_variation = "default"
            end
        end
    end

    local gloves = tweak_data.blackmarket.gloves[list.glove_id]
    if gloves and gloves.custom then
        list.glove_id = "default"
    end

	return self:OutfitStringFromList(list, is_henchman)
end