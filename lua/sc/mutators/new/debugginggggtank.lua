--why would you want this lol--
MutatorDEBUGGGGGTANK = MutatorDEBUGGGGGTANK or class(BaseMutator)
MutatorDEBUGGGGGTANK._type = "MutatorDEBUGGGGGTANK"
MutatorDEBUGGGGGTANK.name_id = "RestorationPDTHHudNeeded"
MutatorDEBUGGGGGTANK.desc_id = "mutator_morespecials_whywhywhy_desc"
MutatorDEBUGGGGGTANK.reductions = {
	money = 0,
	exp = 0
}
MutatorDEBUGGGGGTANK.disables_achievements = false
MutatorDEBUGGGGGTANK.categories = {
	"enemies"
}

MutatorDEBUGGGGGTANK.icon_coords = {
	6,
	1
}

MutatorDEBUGGGGGTANK.load_priority = -10

function MutatorDEBUGGGGGTANK:setup(data)
	if restoration then
		restoration.dozerhavefloddedmeeee = true
	end
end