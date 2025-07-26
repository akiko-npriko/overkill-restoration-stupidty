Hooks:PostHook(NetworkPeer, "_reload_outfit", "udpoateoncea", function(self, outfit_string, outfit_version, outfit_signature)
	if self._unit and self._unit.base and self._unit:base() then
		self._unit:base():update_concealment()
	end
end)