local vmp_weapons = table.set(
    "sg416",
    "bdgr",
    "spike",
	"ak5s",
	"x_ak5s",
	"lebman",
	"sgs",
	"x_lebman",
	"car9",
	"x_car9",
	"amr12",
	"bs23",
	"minibeck",
	"beck"
)

Hooks:PreHook(BlackMarketGui, "populate_buy_weapon", "vanilla_mod_pack_populate_buy_weapon", function(self, data)
    local new_on_create_data = {}

    for i = 1, #data.on_create_data do
        local weapon_data = data.on_create_data[i]
        local weapon_id = weapon_data.weapon_id

        if not vmp_weapons[weapon_id] or vmpkey.Options:GetValue(weapon_id .. "_vmp_toggle") then
            table.insert(new_on_create_data, weapon_data)
        end
    end

    data.on_create_data = new_on_create_data
end)