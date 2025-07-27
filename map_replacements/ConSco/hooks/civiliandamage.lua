Hooks:OverrideFunction(CivilianDamage, "is_friendly_fire", function(self, unit)
    return false
end)