--Hooks made by MiamiCenter, with small help from on_trigger. It is awarding difficulty Achievements, and also fixing Local Players (Everyone in the lobby exept host)
--soo they can unlock achievements too.
Hooks:PostHook(MissionEndState, "chk_complete_heist_achievements", "award_custom_achievements", function (self)
	if not self._success then --Heist completed
		return
	end
	CustomAchievementPackage:init("xanax")
	local normal_and_above = {"normal",		"hard",		"overkill",		"overkill_145",		"easy_wish",	"overkill_290",		"sm_wish"}
	local hard_and_above = {				"hard",		"overkill",		"overkill_145",		"easy_wish",	"overkill_290",		"sm_wish"}
	local veryhard_and_above = {						"overkill",		"overkill_145",		"easy_wish",	"overkill_290",		"sm_wish"}
	local overkill_and_above = {										"overkill_145",		"easy_wish",	"overkill_290",		"sm_wish"}
	local easywish_and_above = {															"easy_wish",	"overkill_290",		"sm_wish"}
	local deathwish_and_above = {																			"overkill_290",		"sm_wish"}
	local sm_wish_and_above = {																									"sm_wish"}
	
	local diff = Global.game_settings.difficulty
	
	if CustomAchievementManager:_is_cheater() then
		return
	end
	
	if table.contains(sm_wish_and_above, diff) and Global.game_settings.one_down then --Awarding Difficulty Achievements
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_dsod")
		achievement:Unlock()
	end
	if table.contains(sm_wish_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_ds")
		achievement:Unlock()
	end
	if table.contains(deathwish_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_dw")
		achievement:Unlock()
	end
	if table.contains(easywish_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_mh")
		achievement:Unlock()
	end
	if table.contains(overkill_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_ovkl")
		achievement:Unlock()
	end
	if table.contains(veryhard_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_vhard")
		achievement:Unlock()
	end
	if table.contains(hard_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_hard")
		achievement:Unlock()
	end
	if table.contains(normal_and_above, diff) then
		local package = CustomAchievementPackage:new("xanax")
        local achievement = package:Achievement("xanax_achiev_normal")
		achievement:Unlock()
	end
end)

Hooks:Add("NetworkReceivedData", "AchievementPackage", function(sender, id, data) --DATA RECEIVER FOR LOCAL PLAYERS ONLY 
	local Net = _G.LuaNetworking
	local achievement_data = "achievement_data"
	if not Net:IsClient() then
		return
	end
	if CustomAchievementManager:_is_cheater() then
		return
	end
	if id == achievement_data then	--Receiving data from Host
		rec_package_id = data[1]
		rec_achievement_id = data[2]
		rec_players_from_start = data[3]
	end
	if rec_package_id and rec_achievement_id then
		if rec_players_from_start == "true" then
			if managers.statistics:is_dropin() then
				return
			end
		end
		local package = CustomAchievementPackage:new(rec_package_id)
		local achievement = package:Achievement(rec_achievement_id)
		achievement:Unlock()
	end
end)

Hooks:PreHook(ElementBLCustomAchievement, "on_executed", "disable_achievements", function (self)
	if CustomAchievementManager:_is_cheater() then
		return
	end
end)

function CustomAchievementManager:_is_cheater()
	local cheat_installed = false
    local cheat_mods = {
        ["Silent Assassin"] = true, ["Pirate Perfection"] = true, ["Carry Stacker Reloaded"] = true, ["DLC Unlocker"] = true,
		["Carry Stacker"] = true, ["RNGModifier"] = true,
		["Forced RNG (alpha)"] = true, ["Forced RNG"] = true		
    }

    local installed_mods = BLT.Mods.mods
    for _,mod in pairs(installed_mods) do 
        local id = mod:GetId()
        if cheat_mods[id] then
			cheat_installed = true
        end
    end
	if cheat_installed then
		return true
	else
		return false
	end
end

Hooks:PostHook(ElementBLCustomAchievement, "on_executed", "award_local_players", function (self, instigator) --DATA SENDER FOR HOSTS ONLY
	local Net = _G.LuaNetworking
	local from_start = tostring(self._values.players_from_start) --Convert to string since boolean value can't be send trought Net:SendToPeers :/
	local send_data = {self._values.package_id, self._values.achievement_id, from_start}
	if Net:IsHost() and not self._values.award_instigator then
		Net:SendToPeers("achievement_data", send_data)
	end
	ElementBLCustomAchievement.super.on_executed(self)
	if Net:IsHost() and self._values.award_instigator and type(instigator) == "userdata" and alive(instigator) then
		local peer = managers.network:session():peer_by_unit(instigator) --Convert instigator to peer.
		local peer_id = peer:id()
		Net:SendToPeer(peer_id, "achievement_data", send_data) --Sending Achievements data to the instigator only
	end
end)