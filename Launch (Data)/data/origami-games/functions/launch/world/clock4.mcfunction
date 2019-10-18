#clock tick (1/4t)
#called by launch/tick

#world generation
## overworld
execute as @a[tag=!lch_world_gen_disabled,nbt={Dimension:0}] at @s if block ~ 0 ~ bedrock run function origami-games:launch/world/overworld/chunk/init
execute as @e[type=area_effect_cloud,tag=lch_chunk_generate] at @s run function origami-games:launch/world/overworld/chunk/generate
kill @e[type=area_effect_cloud,tag=lch_chunk,tag=!lch_chunk_generate]

execute store result score $chunks_generating lch_world_gen if entity @e[type=area_effect_cloud,tag=lch_chunk]
title @a[tag=lch_debug] actionbar [{"text":"lch_chunk "},{"score":{"objective":"lch_world_gen","name":"$chunks_generating"}}]

#reset clock
scoreboard players reset world_4 lch_clock
