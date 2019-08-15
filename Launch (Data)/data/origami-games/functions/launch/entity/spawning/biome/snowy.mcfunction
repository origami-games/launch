#snowy biome spawning
#@s - custom mob found snow biome
#called by launch/entity/spawning/overworld

#check mobs
execute if entity @s[type=enderman] run function origami-games:launch/entity/summon/treemanoid
execute if entity @s[type=wolf] run function origami-games:launch/entity/summon/wolf_rider

#else
execute unless entity @s[y=-512,distance=0] run function origami-games:launch/entity/spawning/biome/generic/global
