#if spawning fails, spawn this mob
#@s - custom mobs after checks and are not custom
#called by launch/entity/spawning/biome/*

execute if score daytime cardb_data matches 12000..23000 if entity @s[type=wolf] run function origami-games:launch/entity/summon/wolf_rider
