#ender dragon fight effects for caged end crystals
#@s - end crystals on end pillars during end fight if caged
#called by launch/world/end/crystals/fight_effects

particle minecraft:end_rod ~ ~ ~ 1.5 1.5 1.5 0 25 force @a
effect give @a[gamemode=survival,distance=..10] mining_fatigue 1 4
