#entity loot table custom check
#@s - at @e[type=!#origami-games:launch/sprite,type=!player,tag=lch_check_spawn] as @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{entity_spawning:1b}}}}}]
#called by launch/entity/spawning/entity_check

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity_custom:1b}}}}}] run function origami-games:launch/entity/spawning/check_spawn
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity_custom:0b}}}}}] run function origami-games:launch/entity/spawning/no_spawn
data merge entity @e[type=!#origami-games:launch/sprite,type=!player,tag=!lch_no_check,distance=0,limit=1] {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
