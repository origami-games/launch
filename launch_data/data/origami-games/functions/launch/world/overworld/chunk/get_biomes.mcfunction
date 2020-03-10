#called by launch/world/overworld/chunk/get_biomes

execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{snowy:1b}}}}}}] run scoreboard players set snowy lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{cold:1b}}}}}}] run scoreboard players set cold lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{wooded:1b}}}}}}] run scoreboard players set wooded lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{the_end:1b}}}}}}] run scoreboard players set the_end lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{jungle:1b}}}}}}] run scoreboard players set jungle lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{swamp:1b}}}}}}] run scoreboard players set swamp lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{warm:1b}}}}}}] run scoreboard players set warm lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{ocean:1b}}}}}}] run scoreboard players set ocean lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{desert:1b}}}}}}] run scoreboard players set desert lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{badlands:1b}}}}}}] run scoreboard players set badlands lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{forest:1b}}}}}}] run scoreboard players set forest lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{plains:1b}}}}}}] run scoreboard players set plains lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{river:1b}}}}}}] run scoreboard players set river lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{beach:1b}}}}}}] run scoreboard players set beach lch_biome 1
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{biome:{border:1b}}}}}}] run scoreboard players set border lch_biome 1

kill @s[type=!player]
