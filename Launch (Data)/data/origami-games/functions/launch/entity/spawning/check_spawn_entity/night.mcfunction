#called by launch/entity/spawning/check_spawn_entity

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"wolf_rider"}}}}}] run function origami-games:launch/entity/summon/wolf_rider
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"treemanoid"}}}}}] run function origami-games:launch/entity/summon/treemanoid
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"sand_crawler"}}}}}] run function origami-games:launch/entity/summon/sand_crawler
