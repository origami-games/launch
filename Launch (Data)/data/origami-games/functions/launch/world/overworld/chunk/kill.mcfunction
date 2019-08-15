#kills chunk markers that have been generated
#@s - @e[type=area_effect_cloud,tag=lch_chunk,tag=lch_chunk_generated]
#called by launch/clock16

execute if block ~16 ~ ~ barrier if block ~-16 ~ ~ barrier if block ~ ~ ~16 barrier if block ~ ~ ~-16 barrier run kill @s[type=!player]
