#aec management
#@s - aec
#called by launch/tick

#world generation
## end
execute if entity @s[tag=lch_world_marker_end] unless entity @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,distance=0..] run summon area_effect_cloud ~ 255 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_end_exit_portal_marker"],CustomName:'"lch_end_exit_portal_marker"'}

execute if entity @s[tag=lch_end_exit_portal_marker,tag=!lch_found_exit_portal] run function origami-games:launch/world/end/exit_portal/find_y
execute if entity @s[tag=lch_end_exit_portal_marker,tag=lch_found_exit_portal] if block ~ ~ ~ bedrock run function origami-games:launch/world/end/dragon_fight/regenerate_structures

execute if entity @s[tag=lch_end_gateway_marker,tag=!lch_end_gateway_spawned] if block ~ ~ ~ bedrock run function origami-games:launch/world/end/spawn_end_gateway

execute if entity @s[tag=lch_world_marker_end] at @e[type=end_crystal,distance=0..] if entity @e[type=area_effect_cloud,tag=lch_end_crystal_marker,distance=...1] if entity @e[type=ender_dragon] run function origami-games:launch/world/end/crystals/fight_effects
## overworld
execute if entity @s[tag=lch_meteor_fill] at @e[distance=..20,type=item,tag=!lch_entity] run function origami-games:launch/world/overworld/structure/spawn/meteor_fill

#custom blocks
## block breaker
execute if entity @s[tag=lch_block_breaker] run function origami-games:launch/block/block_breaker/processes
