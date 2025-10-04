--dofile(ModPath .. "core.lua")
function GameSetup:load_packages()
	Setup.load_packages(self)

	if not PackageManager:loaded("packages/game_base_init") then
		PackageManager:load("packages/game_base_init")
	end
	
	--Gangster's VO
	if not PackageManager:loaded("levels/narratives/h_alex_must_die/stage_1/world_sounds") then
		PackageManager:load("levels/narratives/h_alex_must_die/stage_1/world_sounds")
	end
	if not PackageManager:loaded("levels/narratives/h_alex_must_die/stage_2/world_sounds") then
		PackageManager:load("levels/narratives/h_alex_must_die/stage_2/world_sounds")
	end
	if not PackageManager:loaded("levels/narratives/e_welcome_to_the_jungle/stage_1/world_sounds") then
		PackageManager:load("levels/narratives/e_welcome_to_the_jungle/stage_1/world_sounds")
	end
	if not PackageManager:loaded("levels/narratives/dentist/mia/stage2/world_sounds") then
		PackageManager:load("levels/narratives/dentist/mia/stage2/world_sounds")
	end

	if not managers.dlc:is_installing() then
		if not PackageManager:loaded("packages/game_base") and PackageManager:package_exists("packages/game_base") then
			PackageManager:load("packages/game_base")
		end

		if not PackageManager:loaded("packages/wip/game_base") and PackageManager:package_exists("packages/wip/game_base") then
			PackageManager:load("packages/wip/game_base")
		end

		local prefix = "packages/dlcs/"
		local sufix = "/game_base"
		local package = ""

		for dlc_package, bundled in pairs(tweak_data.BUNDLED_DLC_PACKAGES) do
			package = prefix .. tostring(dlc_package) .. sufix

			Application:debug("[MenuSetup:load_packages] DLC package: " .. package, "Is package OK to load?: " .. tostring(bundled))

			if bundled and (bundled == true or bundled == 2) and PackageManager:package_exists(package) and not PackageManager:loaded(package) then
				PackageManager:load(package)
			end
		end
	end

	local job_tweak_contact_data, job_tweak_package_data = nil

	if Global.job_manager and Global.job_manager.current_job and Global.job_manager.current_job.job_id then
		job_tweak_contact_data = tweak_data.narrative:job_data(Global.job_manager.current_job.job_id)
		job_tweak_package_data = tweak_data.narrative:job_data(Global.job_manager.current_job.job_id, true)
	end

	self._loaded_diff_packages = {}

	local function load_difficulty_package(package_name)
		if PackageManager:package_exists(package_name) and not PackageManager:loaded(package_name) then
			table.insert(self._loaded_diff_packages, package_name)
			PackageManager:load(package_name)
		end
    end
	local function isthisaskimerish()
		local laskirmish_heists = {
		"skmc_mad",
		"skm_red2",
		"skm_mus",
		"skm_arena",
		"skmc_ovengrill",
		"skm_watchdogs_stage2",
		"skm_firestarter_2",
		"skm_nightmare_lvl",
		"skm_big2",
		"skm_mallcrasher",
		"skm_cas",
		"skm_bex",
		"skm_friend",
		"skm_street"
		}
		if Global.level_data and Global.level_data.level_id then
			local level_id = Global.level_data.level_id
			if table.contains(laskirmish_heists, level_id) then
				log("[isthisaskimerish] Current heist (" .. level_id .. ") is a Skirmish heist.")
				return true
			else
				log("[isthisaskimerish] Current heist (" .. level_id .. ") is NOT a Skirmish heist or is not tracked.")
				return false
			end
		end
		log("[isthisaskimerish] Warning: This is not available")
		return false
    end
	restoration:thinkf_refresh_current_throughput() -- thinkfaser setting :3
	--Starts first loads shared textures and assets (akiko edit)
	load_difficulty_package("packages/addsharedassets")
	
    local a = tweak_data.levels.ai_groups.america
    local r = tweak_data.levels.ai_groups.russia
    local m = tweak_data.levels.ai_groups.murkywater
    local z = tweak_data.levels.ai_groups.zombie
    local f = tweak_data.levels.ai_groups.federales
    local la = tweak_data.levels.ai_groups.lapd
    local ny = tweak_data.levels.ai_groups.nypd
	local feds = tweak_data.levels.ai_groups.fbi
    local ai_type = tweak_data.levels:get_ai_group_type()

	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)
    
	if job_tweak_package_data and job_tweak_package_data.load_all_difficulty_packages and not managers.skirmish:is_skirmish() then
		for i, difficulty in ipairs(tweak_data.difficulties) do
			local diff_package = "packages/" .. (difficulty or "normal")

			load_difficulty_package(diff_package)
        end
    elseif ai_type == a then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_america" or "normal")

		load_difficulty_package(diff_package)
		PackageManager:load("packages/sm_wish")
	elseif ai_type == z then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_zombie" or "normal")

        load_difficulty_package(diff_package)
		PackageManager:load("packages/sm_wish")
	
    elseif ai_type == r then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_russia" or "normal")

        load_difficulty_package(diff_package) 
		PackageManager:load("packages/lvl_mad")

    elseif ai_type == m then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_murkywater" or "normal")
		PackageManager:load("packages/dlcs/bph/job_bph")

        load_difficulty_package(diff_package)
    elseif ai_type == f then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_federales" or "normal")

        load_difficulty_package(diff_package)
    elseif ai_type == la then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_lapd" or "normal")

        load_difficulty_package(diff_package)
		PackageManager:load("packages/sm_wish")
    elseif ai_type == ny then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_nypd" or "normal")

        load_difficulty_package(diff_package)
		PackageManager:load("packages/sm_wish")
	elseif ai_type == feds then
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty .. "_sc_fbi" or "normal")

        load_difficulty_package(diff_package)
		PackageManager:load("packages/sm_wish")	
	else
		local diff_package = "packages/" .. (Global.game_settings and Global.game_settings.difficulty or "normal")

		load_difficulty_package(diff_package)
    end
	
	--Akiko Edits
	Hooks:Add("NetworkReceivedData", "akiko_sync_unique_units", function(sender, id, data)
		if id == "akiko_unit_network_keys" then
			local akiko_unit_data = data and (data ~= "") and LuaNetworking:StringToTable(data)
			if akiko_unit_data then
				if sender == 1 then
					log("**********************************************************Received AkikoUniqueUnitSync with results: ")
					Utils.PrintTable(akiko_unit_data)
					log("**********************************************************End. entry.lua")

					for key,setting in pairs(akiko_unit_data) do
						if restoration.akiko_unique_units_keys[key] ~= nil then
							restoration.akiko_unique_units_keys[key] = setting
						end
					end
				end
			end
		end
	end)
	
	--Note to self:
		--<Package id="packages/akiko_misc" file="packages/akiko_package/addmisc.xml"/>
		--USE PACKAGE ID AND NOT FILE LOCATION OR ASSETS ARE NEVER LOADED!!!
	local amiaskimiersh = isthisaskimerish()
	load_difficulty_package("packages/addwarthog")
	load_difficulty_package("packages/addgroundsniperfbi")
	load_difficulty_package("packages/addgroundsniperswat")
	load_difficulty_package("packages/addatfagent")
	load_difficulty_package("packages/addciaagent")
	load_difficulty_package("packages/addtazerdozer")
	load_difficulty_package("packages/addzealtazerdozer")
	if (difficulty_index == 6 or difficulty_index == 7 or difficulty_index == 8 or amiaskimiersh) then
		load_difficulty_package("packages/addgigndoc")
	end
	if (difficulty_index == 7 or amiaskimiersh) then
		load_difficulty_package("packages/addgroundsnipergensec")
	end
	if (difficulty_index == 7 or difficulty_index == 8 or amiaskimiersh) then
		--load_difficulty_package("packages/addngminigun")
		load_difficulty_package("packages/addxofunit")
		load_difficulty_package("packages/addtitanshielddozer")
	end
	if (difficulty_index == 8 or amiaskimiersh) and (ai_type == a or ai_type == feds or ai_type == la or ai_type == ny) then
		load_difficulty_package("packages/addnationalguards")
		load_difficulty_package("packages/addusngwarthog")
		load_difficulty_package("packages/addgroundsniperng")
		load_difficulty_package("packages/addirsunits")
	end
	
	--New Test System :3 - finetune later prob after modular aegis
	if restoration.akiko_unique_units_keys then
		if restoration.akiko_unique_units_keys.zealorng then
			if restoration.akiko_unique_units_keys.zealorng == "zeal_camo" then
				load_difficulty_package("packages/addzealcamounits")
			elseif restoration.akiko_unique_units_keys.zealorng == "zeal_noir" then
				load_difficulty_package("packages/addzealnoirunits")
			end
		end
	end
	
	
	--[[
	if difficulty_index == 4 then
		load_difficulty_package("packages/akiko_package/REPLACEME")
	elseif difficulty_index == 5 then
		load_difficulty_package("packages/akiko_package/REPLACEME")
	elseif difficulty_index == 6 then
		load_difficulty_package("packages/akiko_package/REPLACEME")
	elseif difficulty_index == 7 then
		load_difficulty_package("packages/akiko_package/REPLACEME")
	elseif difficulty_index == 8 then
		load_difficulty_package("packages/akiko_package/REPLACEME")
	end
	]]
	
	--End of Akiko Edits
    
    self._loaded_faction_packages = {}

    local faction_package

    if not Global.level_data or not Global.level_data.level_id then
		if not Application:editor() then
			faction_package = "packages/production/level_debug"
		end
    end

    if ai_type == z then
        faction_package = {
            "packages/narr_hvh", 
            "levels/narratives/bain/hvh/world_sounds"
        }
        table.insert(self._loaded_faction_packages, faction_package)
		
    elseif ai_type == r then 
        faction_package = {
			"levels/narratives/elephant/mad/world_sounds"
        }
        table.insert(self._loaded_faction_packages, faction_package)
	 elseif ai_type == m then 
        faction_package = {
			"packages/omniamisc"
        }
        table.insert(self._loaded_faction_packages, faction_package)
	elseif ai_type == f then
        faction_package = {
            "packages/job_bex",
			"levels/narratives/vlad/bex/world_sounds"
        }
        table.insert(self._loaded_faction_packages, faction_package)
	
    end
    if faction_package then
        if type(faction_package) == "table" then
            self._loaded_faction_packages = faction_package
            
            for _, package in ipairs(faction_package) do
				if not PackageManager:loaded(package) then
					PackageManager:load(package)
				end
			end
        end
	end

	local level_package = nil

	if not Global.level_data or not Global.level_data.level_id then
		if not Application:editor() then
			level_package = "packages/production/level_debug"
		end
	else
		local lvl_tweak_data = Global.level_data and Global.level_data.level_id and tweak_data.levels[Global.level_data.level_id]
		level_package = lvl_tweak_data and lvl_tweak_data.package
	end

	if level_package then
		if type(level_package) == "table" then
			self._loaded_level_package = level_package

			for _, package in ipairs(level_package) do
				if not PackageManager:loaded(package) then
					PackageManager:load(package)
				end
			end
		elseif not PackageManager:loaded(level_package) then
			self._loaded_level_package = level_package

			PackageManager:load(level_package)
		end
	end

	local contact = nil

	if Global.job_manager and Global.job_manager.interupt_stage then
		contact = "interupt"

		if tweak_data.levels[Global.job_manager.interupt_stage].bonus_escape then
			contact = "bain"
		end
	else
		contact = job_tweak_contact_data and job_tweak_contact_data.contact
	end

	local contact_tweak_data = tweak_data.narrative.contacts[contact]
	local contact_package = contact_tweak_data and contact_tweak_data.package

	if contact_package and not PackageManager:loaded(contact_package) then
		self._loaded_contact_package = contact_package

		PackageManager:load(contact_package)
	end

	local contract_package = job_tweak_package_data and job_tweak_package_data.package

	if contract_package and not PackageManager:loaded(contract_package) then
		self._loaded_contract_package = contract_package

		PackageManager:load(contract_package)
	end

	if Global.level_data and Global.level_data.level_id and Global.game_settings and Global.game_settings.gamemode == "crime_spree" then
		self._loaded_job_packages = {}

		for job_id, data in pairs(tweak_data.narrative.jobs) do
			for _, level_data in ipairs(data.chain or {}) do
				if level_data.level_id == Global.level_data.level_id then
					local package = data.package

					if package and PackageManager:package_exists(package) and not PackageManager:loaded(package) and not table.contains(self._loaded_job_packages, package) then
						table.insert(self._loaded_job_packages, package)
					end
				end
			end
		end

		for _, package in ipairs(self._loaded_job_packages) do
			PackageManager:load(package)
		end
	end

	if Global.mutators and Global.mutators.active_on_load and table.size(Global.mutators.active_on_load) > 0 then
		self._mutators_packages = {}

		if PackageManager:package_exists(MutatorsManager.package) and not PackageManager:loaded(MutatorsManager.package) then
			table.insert(self._mutators_packages, MutatorsManager.package)
		end

		for id, data in pairs(Global.mutators.active_on_load) do
			local package = _G[id] and _G[id].package

			if package and PackageManager:package_exists(package) and not PackageManager:loaded(package) then
				table.insert(self._mutators_packages, package)
			end
		end

		for _, package in ipairs(self._mutators_packages) do
			PackageManager:load(package)
		end
	end
end

function GameSetup:gather_packages_to_unload()
	Setup.unload_packages(self)

	self._started_unloading_packages = true
	self._packages_to_unload = self._packages_to_unload or {}

	if not Global.load_level then
		local prefix = "packages/dlcs/"
		local sufix = "/game_base"
		local package = ""

		for dlc_package, bundled in pairs(tweak_data.BUNDLED_DLC_PACKAGES) do
			package = prefix .. tostring(dlc_package) .. sufix

			if bundled and (bundled == true or bundled == 2) and PackageManager:package_exists(package) and PackageManager:loaded(package) then
				table.insert(self._packages_to_unload, package)
			end
		end
	end

	if self._loaded_level_package then
		if type(self._loaded_level_package) == "table" then
			for _, package in ipairs(self._loaded_level_package) do
				if PackageManager:loaded(package) then
					table.insert(self._packages_to_unload, package)
				end
			end
		elseif PackageManager:loaded(self._loaded_level_package) then
			table.insert(self._packages_to_unload, self._loaded_level_package)
		end

		self._loaded_level_package = nil
	end

	if PackageManager:loaded(self._loaded_contact_package) then
		table.insert(self._packages_to_unload, self._loaded_contact_package)

		self._loaded_contact_package = nil
	end

	if PackageManager:loaded(self._loaded_contract_package) then
		table.insert(self._packages_to_unload, self._loaded_contract_package)

		self._loaded_contract_package = nil
	end

	if self._loaded_job_packages then
		for _, package in ipairs(self._loaded_job_packages) do
			if PackageManager:loaded(package) then
				table.insert(self._packages_to_unload, package)
			end
		end
	end

	if self._loaded_diff_packages then
		for i, package in ipairs(self._loaded_diff_packages) do
			if PackageManager:loaded(package) then
				table.insert(self._packages_to_unload, package)
			end
		end

		self._loaded_diff_packages = {}
    end
    
    if self._loaded_faction_packages then
		for i, package in ipairs(self._loaded_faction_packages) do
			if PackageManager:loaded(package) then
				table.insert(self._packages_to_unload, package)
			end
		end

		self._loaded_faction_packages = {}
	end

	if self._mutators_packages then
		for i, package in ipairs(self._mutators_packages) do
			if PackageManager:loaded(package) then
				table.insert(self._packages_to_unload, package)
			end
		end

		self._mutators_packages = {}
	end
end