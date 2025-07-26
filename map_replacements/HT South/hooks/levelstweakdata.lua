Hooks:PostHook(TweakData,"_init_pd2","anim_data",function(self)
    self.level_tj_htsb = {}
    self.level_tj_htsb.anim_data = {
        from = {
            Vector3(250,230,850), -- From Location
            Rotation(18,8,-0) -- From Rotation
        },
        to = {
            Vector3(2050,300,850), -- To location
            Rotation(-30,8,0) -- To Rotation
        },
        speed = 15, -- Speed, tweak this to fit the dialogue / distance from to to
        marker = { -- This is data for the actual "Hologram"
            size = 600, -- Size of the text and icons
            rot = Rotation(-90,-0,-0), -- Rotation of this "Hologram"
            pos = Vector3(700,1900,800) -- Rotation of this "Hologram"
        }
    }
end)