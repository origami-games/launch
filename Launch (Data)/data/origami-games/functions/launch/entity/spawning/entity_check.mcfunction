#entity spawning
#@s - @e[type=!#origami-games:launch/sprite,type=!player,tag=lch_check_spawn]
#called by launch/tick

loot spawn ~ ~ ~ loot origami-games:launch/entities/function/spawning/check_custom
execute as @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{entity_spawning:1b}}}}}] run function origami-games:launch/entity/spawning/check_custom
tag @s remove lch_check_spawn
