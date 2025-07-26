CrimeSpreeTweakData.copyPrevious_rgbo001 = CrimeSpreeTweakData.initCustomHeists;

function CrimeSpreeTweakData:initCustomHeists(...)
	CrimeSpreeTweakData:copyPrevious_rgbo001(...)
	
	self:addCustomHeist("bookmakers_office", {spreeValue = 7, stealth = true, short = false})
end