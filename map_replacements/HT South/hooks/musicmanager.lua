local jukebox_default_tracks = MusicManager.jukebox_default_tracks
function MusicManager:jukebox_default_tracks()
    local trax = jukebox_default_tracks(self)
    
    trax.heist_HarvestTrustee_SouthernBranch_name = "music_htsb"
    
    return trax
end