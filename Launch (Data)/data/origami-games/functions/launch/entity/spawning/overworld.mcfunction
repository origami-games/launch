#overworld spawns
#@s - mob spawned in the overworld
#called by launch/entity/spawning/check_conditions

#check biome
execute positioned ~ 0 ~ if entity @s[distance=..20] run function origami-games:launch/entity/spawning/biome/deep_cave
execute positioned ~ 0 ~ if entity @s[distance=..60] run function origami-games:launch/entity/spawning/biome/cave

execute run loot spawn ~ ~ ~ loot origami-games:launch/world/detect_biome

execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{plains:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/plains
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{snowy:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/snowy
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{cold:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/cold
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{the_end:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/the_end
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{jungle:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/jungle
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{swamp:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/swamp
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{warm:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/warm
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{ocean:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/ocean
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{desert:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/desert
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{badlands:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/badlands
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{forest:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/forest
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{beach:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/beach
execute if entity @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{wooded:1b}}}}}}] run function origami-games:launch/entity/spawning/biome/generic/wooded

kill @e[type=item,distance=0,nbt={Item:{tag:{origami-games:{launch:{biome:{}}}}}}]

tag @s remove lch_replace
