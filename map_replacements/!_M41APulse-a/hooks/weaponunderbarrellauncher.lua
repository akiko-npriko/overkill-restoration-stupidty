Hooks:PostHook(WeaponUnderbarrelLauncher, "init", "M16M203ModInit", function(self)
	self._anim_state = self._on

	if self.anim then
		self._anim = Idstring(self.anim)
	end
end)

function WeaponUnderbarrelLauncher:_check_state(current_state)
	if self._anim_state ~= self._on then
		self._anim_state = self._on

		self:play_anim()
	end

	WeaponUnderbarrelLauncher.super._check_state(self, current_state)
end

function WeaponUnderbarrelLauncher:play_anim()
	if not self._anim then
		return
	end

	local length = self._unit:anim_length(self._anim)
	local speed = self._anim_state and 1 or -1

	self._unit:anim_play_to(self._anim, self._anim_state and length or 0, speed)
end