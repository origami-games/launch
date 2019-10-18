#ender dragon fight effects for end crystals
#@s - end crystals on end pillars during end fight
#called by launch/tick

execute if entity @e[type=area_effect_cloud,tag=lch_end_crystal_marker,distance=...1,tag=lch_end_pillar_caged] run function origami-games:launch/world/end/crystals/fight_effects_caged
execute as @e[type=arrow,tag=!lch_end_crystal_arrow_stopped,distance=..10] run data merge entity @s {Tags:["lch_end_crystal_arrow_stopped"],Motion:[0,0,0]}
