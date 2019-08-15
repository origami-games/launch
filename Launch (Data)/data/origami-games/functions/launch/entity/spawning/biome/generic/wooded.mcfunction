#generic wooded biome spawning
#@s - custom mobs after checks and are not custom
#called by launch/entity/spawning/overworld

execute if entity @s[type=skeleton] if block ~ ~-1 ~ grass_block run function origami-games:launch/entity/summon/wood_sprite
