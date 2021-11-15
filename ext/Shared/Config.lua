local s_PGUID_ApcsDamage = Guid("35DA1164-EAA9-4622-8D5A-704FF73DD295")
local s_IGUID_ApcsDamage = Guid("6B6AE9B0-2592-4E94-9193-B4BE7F3C394A")
ResourceManager:RegisterInstanceLoadHandler(s_PGUID_ApcsDamage, s_IGUID_ApcsDamage, function(p_LoadedInstance)
    local s_BulletEntityData = BulletEntityData(p_LoadedInstance)
    s_BulletEntityData:MakeWritable()
    s_BulletEntityData.startDamage = 100.0
    s_BulletEntityData.endDamage = 100.0
print("*changed BulletEntityData of Apc's Damage")
end)

local s_PGUID_ApcsReload = Guid("35DA1164-EAA9-4622-8D5A-704FF73DD295")
local s_IGUID_ApcsReload = Guid("382C510B-6F52-4FA3-9D4A-C113F05323B8")
ResourceManager:RegisterInstanceLoadHandler(s_PGUID_ApcsReload, s_IGUID_ApcsReload, function(p_LoadedInstance)
    local s_FiringFunctionData = FiringFunctionData(p_LoadedInstance)
    s_FiringFunctionData:MakeWritable()
    s_FiringFunctionData.fireLogic.holdAndRelease.maxHoldTime = 15.0
    s_FiringFunctionData.fireLogic.reloadTime = 20.0
    s_FiringFunctionData.ammo.magazineCapacity = 150.0
    s_FiringFunctionData.ammo.numberOfMagazines = 2.0
print("changed FiringFunctionData of Apc's Reload")
end)

local s_PGUID_ApcsSplash = Guid("35DA1164-EAA9-4622-8D5A-704FF73DD295")
local s_IGUID_ApcsSplash = Guid("37947774-F524-41E7-9207-DA3CDD0D2FFE")
ResourceManager:RegisterInstanceLoadHandler(s_PGUID_ApcsSplash, s_IGUID_ApcsSplash, function(p_LoadedInstance)
    local s_VeniceExplosionEntityData = VeniceExplosionEntityData(p_LoadedInstance)
    s_VeniceExplosionEntityData:MakeWritable()
    s_VeniceExplosionEntityData.innerBlastRadius = 20.0
    s_VeniceExplosionEntityData.blastDamage = 99.9
    s_VeniceExplosionEntityData.blastRadius = 20.0
    s_VeniceExplosionEntityData.shockwaveDamage = 50.00
    s_VeniceExplosionEntityData.shockwaveRadius = 20.0
    s_VeniceExplosionEntityData.shockwaveImpulse = 100.0
    s_VeniceExplosionEntityData.shockwaveTime = 1.00
print("changed VeniceExplosionEntityData of Apc's Splash")
end)


