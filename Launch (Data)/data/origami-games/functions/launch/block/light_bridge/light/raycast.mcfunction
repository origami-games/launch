#raycasts light bridge
#@s - light bridge
#called by launch/block/light_bridge/processes

summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_light_bridge_raycast"],CustomName:'"lch_light_bridge_raycast"'}

execute if entity @s[scores={lch_lb_rotation=0}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~ ~1 ~ 0 -90
execute if entity @s[scores={lch_lb_rotation=1}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~ ~-1 ~ 0 90
execute if entity @s[scores={lch_lb_rotation=2}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~ ~ ~-1 -180 0
execute if entity @s[scores={lch_lb_rotation=3}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~1 ~ ~ -90 0
execute if entity @s[scores={lch_lb_rotation=4}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~ ~ ~1 0 0
execute if entity @s[scores={lch_lb_rotation=5}] run tp @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] ~-1 ~ ~ 90 0

execute as @e[type=area_effect_cloud,tag=lch_light_bridge_raycast,sort=nearest,limit=1] run function origami-games:launch/block/light_bridge/light/loop
