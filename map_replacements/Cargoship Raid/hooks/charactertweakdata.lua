--This file is simply changing the way of how Special Enemies works, making them variable in stealth ~ By MiamiCenter
Hooks:PostHook(CharacterTweakData, "init", "init_xanax", function(self, ...)
		self.tank_mini.HEALTH_INIT = 350
		self.tank_mini.ignore_medic_revive_animation = true
		self.tank_mini.allowed_stances = nil
		self.tank_mini.silent_priority_shout = "f42"
		self.tank_mini.calls_in = true
		self.tank_mini.suspicious = true
		self.tank_mini.weapon.mini.FALLOFF = {
			{
				r = 100,
				acc = {0.1, 0.15},
				dmg_mul = 5,
				recoil = {2, 2},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 500,
				acc = {0.05, 0.1},
				dmg_mul = 4,
				recoil = {1.5, 1.75},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 1000,
				acc = {0.04, 0.075},
				dmg_mul = 3.5,
				recoil = {1.2, 1.5},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 2000,
				acc = {0.025, 0.05},
				dmg_mul = 3,
				recoil = {0.7, 1},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 3000,
				acc = {0.01, 0.025},
				dmg_mul = 3,
				recoil = {0.5, 0.7},
				mode = {
					0,
					0,
					0,
					1
				}
			}
		}
		self.tank_mini.move_speed = {
			stand = {
				walk = {
					ntl = {
						strafe = 90,
						fwd = 112,
						bwd = 100
					},
					hos = {
						strafe = 60,
						fwd = 72,
						bwd = 56
					},
					cbt = {
						strafe = 60,
						fwd = 72,
						bwd = 56
					}
				},
				run = {
					hos = {
						strafe = 70,
						fwd = 72,
						bwd = 56
					},
					cbt = {
						strafe = 50,
						fwd = 72,
						bwd = 60
					}
				}
			},
			crouch = {
				walk = {
					hos = {
						strafe = 90,
						fwd = 112,
						bwd = 100
					},
					cbt = {
						strafe = 60,
						fwd = 72,
						bwd = 56
					}
				},
				run = {
					hos = {
						strafe = 65,
						fwd = 72,
						bwd = 56
					},
					cbt = {
						strafe = 50,
						fwd = 72,
						bwd = 60
					}
				}
			}
		}
		self.tank.HEALTH_INIT = 350
		self.tank.ignore_medic_revive_animation = true
		self.tank.allowed_stances = nil
		self.tank.silent_priority_shout = "f42"
		self.tank.calls_in = true
		self.tank.suspicious = true
		self.tank.weapon.mini.FALLOFF = {
			{
				r = 100,
				acc = {0.1, 0.15},
				dmg_mul = 5,
				recoil = {2, 2},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 500,
				acc = {0.05, 0.1},
				dmg_mul = 4,
				recoil = {1.5, 1.75},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 1000,
				acc = {0.04, 0.075},
				dmg_mul = 3.5,
				recoil = {1.2, 1.5},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 2000,
				acc = {0.025, 0.05},
				dmg_mul = 3,
				recoil = {0.7, 1},
				mode = {
					0,
					0,
					0,
					1
				},
			},
			{
				r = 3000,
				acc = {0.01, 0.025},
				dmg_mul = 3,
				recoil = {0.5, 0.7},
				mode = {
					0,
					0,
					0,
					1
				}
			}
		}
end)