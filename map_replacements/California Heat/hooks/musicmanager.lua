local jukebox_default_tracks = MusicManager.jukebox_default_tracks
function MusicManager:jukebox_default_tracks()
    local trax = jukebox_default_tracks(self)
    
    trax.heist_lit_name = "bod"
    trax.heist_lit_bonus_name = "bod"
    
    return trax
end