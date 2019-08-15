#nether spawns
#@s - custom mob spawned in nether
#called by launch/entity/spawning/new_spawn/check

execute store result score @s lch_mo_sp_biome run clone ~-5 ~-5 ~-5 ~5 ~5 ~5 ~-5 ~-5 ~-5 filtered lava force

execute if entity @s[type=zombie_pigman,scores={lch_mo_sp_biome=1..}] run function origami-games:launch/entity/summon/fire_ant
