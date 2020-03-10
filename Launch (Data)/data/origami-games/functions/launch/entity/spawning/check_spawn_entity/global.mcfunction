#called by launch/entity/spawning/check_spawn_entity

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"shulker"}}}}}] run summon shulker ~ ~ ~ {Color:16,Tags:["lch_no_check"]}

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"slime_queen"}}}}}] run function origami-games:launch/entity/summon/slime_queen
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"wood_sprite"}}}}}] run function origami-games:launch/entity/summon/wood_sprite
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"fire_ant"}}}}}] run function origami-games:launch/entity/summon/fire_ant
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"verdant_crystal"}}}}}] run function origami-games:launch/block/verdant_crystal/create
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"sea_urchin"}}}}}] run function origami-games:launch/entity/summon/sea_urchin
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"crab"}}}}}] run function origami-games:launch/entity/summon/crab
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"ender_sprite"}}}}}] run function origami-games:launch/entity/summon/ender_sprite
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"hopper"}}}}}] run function origami-games:launch/entity/summon/hopper
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{entity:"flinty_biter"}}}}}] run function origami-games:launch/entity/summon/hopper
