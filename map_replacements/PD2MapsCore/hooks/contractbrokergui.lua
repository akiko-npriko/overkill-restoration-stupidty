--PAYDAY 2 Creatos hook. https://discordapp.com/invite/GKRZAhF for more tutorials and hooks
Hooks:PostHook(ContractBrokerGui, '_create_job_data', 'new_heist_hook', function(self, ...)
	for index, job_data in ipairs(self._job_data) do
		local job_tweak = tweak_data.narrative:job_data(job_data.job_id)
		if job_tweak.contact == "pd2maps" or job_tweak.is_custom then
			if not job_data.is_new then
				job_data.is_new = not managers.crimenet:get_last_played_job(job_data.job_id)
			end
		end
	end
end)