#finds y level of the tip of the end's exit portal
#@s - @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,tag=!lch_found_exit_portal]
#called by launch/tick

execute at @s if entity @e[type=area_effect_cloud,tag=lch_world_marker_end,distance=...1] run kill @s
execute at @s unless block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=lch_world_marker_end,distance=...1] run function origami-games:launch/world/end/exit_portal/find_y_loop
execute at @s if block ~ ~ ~ bedrock run tag @s add lch_found_exit_portal
execute if entity @s[tag=lch_found_exit_portal] run function origami-games:launch/world/end/initial_generation
