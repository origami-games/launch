#entity loot table custom check
#@s - @e[type=!#origami-games:launch/sprite,type=!player,tag=lch_check_spawn] at @e[ENTITY_SPAWNING_ITEM,distance=0]
#called by launch/entity/spawning/entity_check

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity_custom:1b}}}}}] run function origami-games:launch/entity/spawning/check_spawn
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity_custom:0b}}}}}] run function origami-games:launch/entity/spawning/no_spawn
