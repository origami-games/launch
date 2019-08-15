#desert biome spawning
#@s - custom mob found desert biome
#called by launch/entity/spawning/overworld

#check mobs
execute if entity @s[type=husk] run function origami-games:launch/entity/summon/sand_crawler

#else
execute unless entity @s[y=-512,distance=0] run function origami-games:launch/entity/spawning/biome/generic/global
