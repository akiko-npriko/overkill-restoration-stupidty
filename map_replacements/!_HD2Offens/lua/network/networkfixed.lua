if RequiredScript== "lib/managers/playermanager" then
	Hooks:OverrideFunction(PlayerManager, "update_grenades_to_peer", function(self, peer)
	-- function PlayerManager:update_grenades_to_peer(peer)
		local peer_id = managers.network:session():local_peer():id()


		if self._global.synced_grenades[peer_id] then
			local grenade = self._global.synced_grenades[peer_id].grenade
			local tweak = tweak_data.blackmarket.projectiles[grenade]
			
			if tweak.based_on then 
				grenade = tweak.based_on
			end
			local amount = self._global.synced_grenades[peer_id].amount

			peer:send_queued_sync("sync_grenades", grenade, Application:digest_value(amount, false), 0)
		end
	end)

	Hooks:OverrideFunction(PlayerManager, "update_grenades_amount_to_peers", function(self, grenade, amount, register_peer_id)
	-- function PlayerManager:update_grenades_amount_to_peers(grenade, amount, register_peer_id)
		local peer_id = managers.network:session():local_peer():id()
		
			local tweak = tweak_data.blackmarket.projectiles[grenade]
			if tweak.based_on then 
				grenade = tweak.based_on
			end
			
		managers.network:session():send_to_peers_synched("sync_grenades", grenade, amount, register_peer_id or 0)
		self:set_synced_grenades(peer_id, grenade, amount, register_peer_id)
	end)

	Hooks:OverrideFunction(PlayerManager, "add_grenade_amount", function(self, amount, sync)
	-- function PlayerManager:add_grenade_amount(amount, sync)
		local peer_id = managers.network:session():local_peer():id()
		local grenade = managers.blackmarket:equipped_grenade() --self._global.synced_grenades[peer_id].grenade
		local tweak = tweak_data.blackmarket.projectiles[grenade]
		local max_amount = self:get_max_grenades_by_peer_id(peer_id)
		local icon = tweak.icon
		local previous_amount = self._global.synced_grenades[peer_id].amount

		if amount > 0 and tweak.base_cooldown then
			managers.hud:animate_grenade_flash(HUDManager.PLAYER_PANEL)
		end

		amount = math.min(Application:digest_value(previous_amount, false) + amount, max_amount)

		if amount < max_amount and tweak.base_cooldown then
			self:replenish_grenades(tweak.base_cooldown)
		end

		managers.hud:set_teammate_grenades_amount(HUDManager.PLAYER_PANEL, {
			icon = icon,
			amount = amount
		})
		self:update_grenades_amount_to_peers(grenade, amount, sync and peer_id)
	end)
elseif RequiredScript== "lib/network/base/networkpeer" then
	--在修复了outfit_string之后，MOD最大数量会出现问题，这是修复的地方
	local old_NetworkPeer_grenade_id = NetworkPeer.grenade_id

	function NetworkPeer:grenade_id(...)
		if self._id == managers.network:session():local_peer():id() then
			return managers.blackmarket:equipped_grenade()
		end

		return old_NetworkPeer_grenade_id(self, ...)
	end
elseif RequiredScript== "lib/tweak_data/blackmarket/projectilestweakdata" then
	local old_BlackMarketTweakData_get_index_from_projectile_id = BlackMarketTweakData.get_index_from_projectile_id
	function BlackMarketTweakData:get_index_from_projectile_id(projectile_id, ...)
		local grenade_td = tweak_data.blackmarket.projectiles[projectile_id]

		if grenade_td.based_on then
			for index, entry_name in ipairs(self._projectiles_index) do

				if entry_name == grenade_td.based_on then
					return index
				end
			end
		end

		return old_BlackMarketTweakData_get_index_from_projectile_id(self, projectile_id, ...)
	end
elseif RequiredScript== "lib/managers/blackmarketmanager" then	
	local NewProjectiles_OutfitString_Block = BlackMarketManager.outfit_string

	function BlackMarketManager:outfit_string()
		local s = NewProjectiles_OutfitString_Block(self)
		local _grenade = self:equipped_grenade()
		if tweak_data.blackmarket.projectiles[_grenade].based_on then
			s = s:gsub(_grenade, tweak_data.blackmarket.projectiles[_grenade].based_on or 'concussion')
		end
		return s
	end
end