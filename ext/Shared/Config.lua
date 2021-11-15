Local s_PGUID_ApcsDamage = Guid("35DA1164-EAA9-4622-8D5A-704FF73DD295")
Local s_IGUID_ApcsDamage = Guid("6B6AE9B0-2592-4E94-9193-B4BE7F3C394A")

ResourceManager:RegisterInstanceLoadHandler(s_PGUID_ApcsDamage, s_IGUID_ApcsDamage, function(p_loadedInstance)
  Local s_BulletEntityData = BulletEntityData(p_LoadedInstance)
  s_BulletEntityData:MakeWritable()

s_BulletEntityData.StartDamage = 100.0
s_BulletEntityData.EndDamage = 100.0
   print("changed BulletEntityData of Apc's Damage")
end)


Local s_PGUID_ApcsReload = Guid("35DA1164-EAA9-4622-8D5A-704FF73DD295")
Local s_IGUID_ApcsReload = Guid("382C510B-6F52-4FA3-9D4A-C113F05323B8")

ResourceManager:RegisterInstanceLoadHandler(s_PGUID_ApcsReload, s_IGUID_ApcsReload, function(p_loadedInstance)
  Local s_FiringFunctionData = FiringFunctionData(p_LoadedInstance)
  s_FiringFunctionData:MakeWritable()

s_FiringFunctionData.MaxHoldTime = 15
s_FiringFunctionData.fireLogic.reloadTime = 20.0
s_FiringFunctionData.Ammo.MagazineCapacity = 150.0
s_FiringFunctionData.Ammo.numberOfMagazines = 2.0
   print("changed FiringFunctionData of Apc's Reload")
end)

