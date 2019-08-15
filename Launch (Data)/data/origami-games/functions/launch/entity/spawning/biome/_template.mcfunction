#BIOME biome spawning
#@s - custom mob found BIOME biome
#called by launch/entity/spawning/overworld

#check mobs
#execute CONDITIONS run function origami-games:launch/entity/summon/MOB

#else
execute unless entity @s[y=-512,distance=0] run function origami-games:launch/entity/spawning/biome/generic/global
