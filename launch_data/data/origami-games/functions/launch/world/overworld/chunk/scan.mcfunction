#called by launch/world/overworld/chunk/generate

loot spawn ~ ~ ~ loot origami-games:launch/world/detect_biome
execute as @e[type=item,distance=0,limit=1] run function origami-games:launch/world/overworld/chunk/get_biomes
