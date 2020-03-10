#generate chunk
#@s - @e[type=area_effect_cloud,tag=lch_chunk_generate]
#called by launch/world/overworld/clock4

#get the biome type
scoreboard players reset * lch_biome
execute positioned ~8 -1000 ~8 run function origami-games:launch/world/overworld/chunk/scan
#scan other parts of the chunk if a river has been detected
execute if score border lch_biome matches 1 run function origami-games:launch/world/overworld/chunk/border

#try to spawn a structure before any chunk modifications have been done
function origami-games:launch/world/overworld/structure/check

#mark the chunk as generated
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
tag @s remove lch_chunk_generate

#spread outwards
execute positioned ~16 0 ~ unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=lch_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["lch_chunk","lch_chunk_generate"],CustomName:'"lch_chunk"',Duration:20}
execute positioned ~-16 0 ~ unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=lch_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["lch_chunk","lch_chunk_generate"],CustomName:'"lch_chunk"',Duration:20}
execute positioned ~ 0 ~16 unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=lch_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["lch_chunk","lch_chunk_generate"],CustomName:'"lch_chunk"',Duration:20}
execute positioned ~ 0 ~-16 unless block ~ ~ ~ barrier unless entity @e[type=area_effect_cloud,tag=lch_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["lch_chunk","lch_chunk_generate"],CustomName:'"lch_chunk"',Duration:20}

#warn
title @a actionbar [{"text":"[","color":"dark_aqua"},{"translate":"pack.launch.name","color":"aqua"},{"text":"] ","color":"dark_aqua"},{"translate":"text.launch.world_generation.warn","color":""}]
