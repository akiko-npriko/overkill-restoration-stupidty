local function die(self,...)
	local contour_ext = self._unit:contour() 
	if contour_ext then
		contour_ext:remove("ocpo_target",false,nil)
	end
	OCPOverlay._cooldowns[self._unit:key()] = nil
end

if RequiredScript == "lib/units/enemies/cop/copdamage" then
--	Hooks:PreHook(CopDamage,"destroy","ocpo_copdestroy",die)
	Hooks:PreHook(CopDamage,"die","ocpo_copdie",die)
	Hooks:PreHook(CopDamage,"convert_to_criminal","ocpo_copconvert",die)
elseif RequiredScript == "lib/units/enemies/cop/huskcopdamage" then
	Hooks:PreHook(HuskCopDamage,"die","ocpo_huskcopdie",die)
end