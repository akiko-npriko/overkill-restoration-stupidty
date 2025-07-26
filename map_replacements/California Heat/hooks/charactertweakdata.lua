local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
    
    local char_map = character_map_original(self, ...)
    local weed_map ={
            "ene_gangster_armored"        
    }
    
    
    for _, unit in pairs(weed_map) do
        table.insert(char_map.basic.list, unit)
    end
    
    
    
    
    
    return char_map
end