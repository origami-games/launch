#checks raycast block
#@s - light bridge raycast aec
#called by launch/block/light_bridge/light/loop_end_1

#audiovisuals
particle dust 0.171 0.687 0.687 1 ~ ~.5 ~ .25 .25 .25 0 2 normal @a
execute store success score @s lch_lb_ray_scss run setblock ~ ~ ~ barrier keep
execute if block ~ ~ ~ barrier run scoreboard players reset @s lch_lb_ray_scss
scoreboard players operation @s[scores={lch_lb_ray_scss=0}] lch_lb_ray = $limit lch_lb_ray

#functionality
tp @s ^ ^ ^1
scoreboard players add @s[scores={lch_lb_ray_scss=0}] lch_lb_ray 1

#end
execute if score @s lch_lb_ray > $limit lch_lb_ray run function origami-games:launch/block/light_bridge/light/end_ray
execute at @s unless block ~ ~ ~ #origami-games:launch/block/light_bridge/passable run function origami-games:launch/block/light_bridge/light/end_ray
