changeElement = {}
changeElement = changeElement or class(MissionElement)

local guardlist = 	{	'Idstring(@IDdce5cb64c6544d4f@)', 'Idstring(@ID75d9ad8be368db57@)', 'Idstring(@ID7f4e0d47acab247d@)', 
						'Idstring(@ID91de4c8dbfc8c2f7@)', 'Idstring(@IDbc73e123afb9170a@)', 'Idstring(@IDb408931116b7f124@)'}

function changeElement:enable(ids)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element:set_enabled(true)
				end
			end
		end
	end
end
function changeElement:disable(ids)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element:set_enabled(false)
				end
			end
		end
	end
end

function changeElement:execute(ids)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element:on_executed()
				end
			end
		end
	end
end

function changeElement:setRandom(ids, value)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element._values.amount = value
				end
			end
		end
	end
end

local gone_enemy_list = {}

local checked_mods = {
    ["RestorationMod"] = true, ["Payday 2 Hyper Heisting Shin Shootout"] = true
}
local overhaul_installed = false
local installed_mods = BLT.Mods.mods
for _,mod in pairs(installed_mods) do 
    local id = mod:GetId()
    if checked_mods[id] then
		overhaul_installed = true
    end
end
local x = 0
function counting(name, id)
	if not managers.groupai:state():whisper_mode() then
		return
	end
	if not table.contains(guardlist, name) then
		return
	end
	if not table.contains(gone_enemy_list, id) then
		table.insert(gone_enemy_list, id)
		--respawn guard;
		log("Attempt respawn.")
		if name == "Idstring(@IDdce5cb64c6544d4f@)" then
			log("Done!")
			changeElement:execute({"100091"}) --first stage
			changeElement:execute({"100116"}) --second stage
			changeElement:execute({"100363"}) --third stage
		elseif name == "Idstring(@ID75d9ad8be368db57@)" then
			log("Done!")
			changeElement:execute({"100092"})
			changeElement:execute({"100113"})
			changeElement:execute({"100364"})
		elseif name == "Idstring(@ID7f4e0d47acab247d@)" then
			log("Done!")
			changeElement:execute({"100096"})
			changeElement:execute({"100111"})
			changeElement:execute({"100424"})
		elseif name == "Idstring(@ID91de4c8dbfc8c2f7@)" then
			log("Done!")
			changeElement:execute({"100097"})
			changeElement:execute({"100105"})
			changeElement:execute({"100439"})
		elseif name == "Idstring(@IDbc73e123afb9170a@)" or name == "Idstring(@IDb408931116b7f124@)" then
			log("Done!")
			changeElement:execute({"100097"})
			changeElement:execute({"100104"})
			changeElement:execute({"100474"})
		end
	end
	
	if BeardLib.Utils:ModExists("RestorationMod") or BeardLib.Utils:ModExists("Payday 2 Hyper Heisting Shin Shootout") or overhaul_installed then
		x = 6
	else
		x = 4
	end
	if table.size(gone_enemy_list) == x then
		DelayedCalls:Add("SomeDelay", 1, function()
			changeElement:execute({"100567"})
		end)
	end
	if table.size(gone_enemy_list) > x then
		if managers.groupai:state():is_ecm_jammer_active("camera") then
			managers.mission:add_global_event_listener("btms_ecm_checker", "ecm_jammer_off", function()
				DelayedCalls:Add("delay_not-ecm_alarm", 7, function()
					counting("retry", "1")
				end)
			end)
		else
			DelayedCalls:Add("delay_alarm", 20, function()
				if managers.groupai:state():is_ecm_jammer_active("camera") then
					counting("retry", "1")
				return
				end
				changeElement:enable({"100570"})
				changeElement:execute({"100570"})
				changeElement:enable({"200000"})
				changeElement:execute({"200000"})	
			end)
		end
	end
end

Hooks:PostHook(EnemyManager, 'on_enemy_died', 'count_missing_guards', function(self, dead_unit, damage_info, ...)
	counting(tostring(dead_unit:name()), tostring(dead_unit:id()))
end)

Hooks:PostHook(CopLogicIntimidated, '_do_tied', 'count_dominated_guards', function(data, aggressor_unit, ...)
	counting(tostring(data.unit:name()), tostring(data.unit:id()))
end)