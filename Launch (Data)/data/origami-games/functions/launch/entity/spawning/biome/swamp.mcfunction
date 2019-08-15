#swamp biome spawning
#@s - custom mob found swamp biome
#called by launch/entity/spawning/overworld

#check mobs
execute if entity @s[type=slime] unless entity @e[type=slime,tag=lch_slime_queen,distance=..30] run function origami-games:launch/entity/summon/slime_queen

#else
execute unless entity @s[y=-512,distance=0] run function origami-games:launch/entity/spawning/biome/generic/global
