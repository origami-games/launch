#attempt to spawn a structure based on the seed
#called by launch/world/overworld/chunk/generate

#spawn structure markers
execute if block ~ 1 ~ #origami-games:launch/world/structure/trigger_meteor run summon area_effect_cloud ~8.5 0 ~8.5 {Tags:["lch_entity","lch_structure","lch_structure_meteor"],CustomName:'"lch_structure"'}
execute if block ~ 1 ~ #origami-games:launch/world/structure/trigger_wolf_hideout run summon area_effect_cloud ~8.5 0 ~8.5 {Tags:["lch_entity","lch_structure","lch_structure_wolf_hideout"],CustomName:'"lch_structure"'}
execute if block ~ 1 ~ #origami-games:launch/world/structure/trigger_desert_tomb run summon area_effect_cloud ~8.5 0 ~8.5 {Tags:["lch_entity","lch_structure","lch_structure_desert_tomb"],CustomName:'"lch_structure"'}
#spread markers
execute positioned ~8.5 0 ~8.5 run spreadplayers ~ ~ 0 1 false @e[type=area_effect_cloud,tag=lch_structure,distance=...5]

#spawn structures
execute as @e[type=area_effect_cloud,tag=lch_structure] at @s if block ~ 2 ~ bedrock unless block ~ ~-1 ~ #leaves run function origami-games:launch/world/overworld/structure/spawn

#kill markers
kill @e[type=area_effect_cloud,tag=lch_structure]
