#called by launch/entity/spawning/check_custom

execute unless entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"none"}}}}}] as @e[type=!#origami-games:launch/sprite,type=!player,tag=lch_check_spawn,distance=0,limit=1] run function origami-games:launch/entity/spawning/check_spawn_entity
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"none"}}}}}] run tag @s add lch_no_check
kill @s[type=!player]
