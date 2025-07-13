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

function MutatorOopsAllSpecials:modify_unit_categories(group_ai_tweak, difficulty_index)
	group_ai_tweak.special_unit_spawn_limits = {
		tank = math.huge,
		taser = 0,
		boom = 0,
		spooc = 0,
		shield = 0,
		medic = 0
	}
end