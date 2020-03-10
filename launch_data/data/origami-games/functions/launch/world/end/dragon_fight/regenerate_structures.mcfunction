execute as @e[tag=lch_end_crystal_marker] at @s run function origami-games:launch/world/end/crystals/determine_pillar_size 
execute as @e[type=enderman,distance=0..,limit=15] at @s align xz run function origami-games:launch/world/end/generate_shulkers
fill ~3 ~ ~3 ~-3 ~-4 ~-3 obsidian replace bedrock
setblock ~ ~ ~ purpur_pillar
