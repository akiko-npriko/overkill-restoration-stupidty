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

	local old_NetworkPeer_send = NetworkPeer.send
	function NetworkPeer:send(func_name, p1, p2, p3, p4, p5, p6, p7, p8, p9, ...)
		if func_name == "request_throw_projectile" then
			local projectile_type = tweak_data.blackmarket:get_projectile_name_from_index(p1)

			if tweak_data.blackmarket.projectiles[projectile_type].based_on then
				if not self:has_custom_grenade(projectile_type) then
					return
				end
			end
		elseif func_name == "sync_throw_projectile" then
			local projectile_type = tweak_data.blackmarket:get_projectile_name_from_index(p4)

			if tweak_data.blackmarket.projectiles[projectile_type].based_on then
				if not self:has_custom_grenade(projectile_type) then
					return
				end
			end
		elseif func_name == "sync_attach_projectile" then
			local projectile_type = tweak_data.blackmarket:get_projectile_name_from_index(p8)

			if tweak_data.blackmarket.projectiles[projectile_type].based_on then
				if not self:has_custom_grenade(projectile_type) then
					return
				end
			end
		end

		return old_NetworkPeer_send(self, func_name, p1, p2, p3, p4, p5, p6, p7, p8, p9, ...)
	end

	Hooks:PostHook(NetworkPeer, "init", "NetworkPeer_init_set_custom_grenades_tb", function(self)
		self._custom_grenades = {}
	end)

	function NetworkPeer:has_custom_grenade(projectile_type)
		return self._custom_grenades[projectile_type]
	end

	function NetworkPeer:add_custom_grenade(projectile_type)
		self._custom_grenades[projectile_type] = true
	end

	Hooks:Add("NetworkReceivedData", "NetworkReceivedData_SyncPeerCustomGrenade", function(sender, message, data)
		if message == "sync_local_custom_grenade" then
			local peer = managers.network:session():peer(sender)
			peer:add_custom_grenade(data)
		end
	end)
elseif RequiredScript== "lib/managers/blackmarketmanager" then	
	local NewProjectiles_OutfitString_Block = BlackMarketManager.outfit_string

	function BlackMarketManager:outfit_string()
		local s = NewProjectiles_OutfitString_Block(self)
		local _grenade = self:equipped_grenade()
		if tweak_data.blackmarket.projectiles[_grenade].based_on then
			s = s:gsub(_grenade, tweak_data.blackmarket.projectiles[_grenade].based_on or 'concussion')

			if LuaNetworking then
				LuaNetworking:SendToPeers("sync_local_custom_grenade", _grenade)
			end
		end
		return s
	end
end