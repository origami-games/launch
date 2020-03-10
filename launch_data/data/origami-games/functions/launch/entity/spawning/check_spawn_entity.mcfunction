#called by launch/entity/spawning/check_spawn

#debug notification
title @a[tag=lch_debug] actionbar [{"selector":"@s"},": ",[{"nbt":"Pos[0]","entity":"@s"}," ",{"nbt":"Pos[1]","entity":"@s"}," ",{"nbt":"Pos[2]","entity":"@s"}]," ",{"nbt":"Item.tag.origami-games.launch.entity","entity":"@e[type=item,distance=0]"}]

#spawn entity
execute as @e[type=item,distance=0] if data entity @s Item.tag.origami-games.launch.entity run function origami-games:launch/entity/spawning/check_spawn_entity/global
execute if score daytime lch_data matches 12000..23000 as @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{}}}}}] run function origami-games:launch/entity/spawning/check_spawn_entity/night
