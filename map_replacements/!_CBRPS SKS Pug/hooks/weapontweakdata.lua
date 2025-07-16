Hooks:PostHook(WeaponTweakData, "init", "SKSPUGModInit", function(self)
	if self.skspug and BeardLib.Utils:FindMod("Custom Categories for custom weapons") then
		self.skspug.categories = {"assault_rifle"}
	end
end)