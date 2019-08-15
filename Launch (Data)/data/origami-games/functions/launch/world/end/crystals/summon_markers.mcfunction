#marks end crystals for later use
#context - in the_end
#called by launch/tick

kill @e[type=area_effect_cloud,tag=lch_end_crystal_marker]
execute at @e[type=end_crystal,nbt={Dimension:1}] unless entity @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,distance=..3.61] run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_end_crystal_marker"],CustomName:'"lch_end_crystal_marker"'}
execute as @e[type=area_effect_cloud,tag=lch_end_crystal_marker] at @s run function origami-games:launch/world/end/crystals/determine_pillar_size

fill ~2 ~2 ~2 ~-2 ~-1 ~-2 air replace iron_bars
