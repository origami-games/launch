#called by launch/entity/spawning/check_spawn_entity

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"slime_queen"}}}}}] run function origami-games:launch/entity/summon/slime_queen
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"wood_sprite"}}}}}] run function origami-games:launch/entity/summon/wood_sprite
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"fire_ant"}}}}}] run function origami-games:launch/entity/summon/fire_ant
