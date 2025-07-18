RaygunWeaponBase = RaygunWeaponBase or class(NewRaycastWeaponBase)

-- More Weapon Stats Support
if Faker then
	ProjectileWeaponBase = ProjectileWeaponBase or class(NewRaycastWeaponBase)

	Faker.classes.RaygunWeaponBase = RaygunWeaponBase
	Faker:redo_class('RaygunWeaponBase', 'ProjectileWeaponBase')
end