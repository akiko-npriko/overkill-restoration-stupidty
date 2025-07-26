Hooks:PreHook(CrimeNetGui, "update_job_gui", "play_xanax_crimenet", function (self, job, inside)
	if job.mouse_over ~= inside and inside == 1 then
		if job.job_id == "YouAreNeverAloneInTheDark" then
			managers.menu_component:custom_post_event("xanax_crimenet_"..math.random(1, 3))
		end
	end
end)

function MenuComponentManager:custom_post_event(event)
	if self._custom_callout then
		self._custom_callout._engine_source:stop()
		self._custom_callout = nil
	end

	self._custom_callout = self._sound_source:post_event(event)
	return self._custom_callout
end
Hooks:PreHook(MenuComponentManager, "post_event", "post_event_stop_custom_callout", function (self, event, unique)
	if unique and self._custom_callout then
		self._custom_callout._engine_source:stop()
		self._custom_callout = nil
	end
end)
Hooks:PostHook(MenuComponentManager, "stop_event", "stop_custom_callout", function (self)
	if self._custom_callout then
		self._custom_callout._engine_source:stop()
		self._custom_callout = nil
	end
end)