#checks raycast block
#@s - light bridge raycast aec
#called by self

#functionality
execute if block ~ ~ ~ barrier run function origami-games:launch/block/light_bridge/light/particle
execute store success score @s lch_lb_ray_scss run setblock ~ ~ ~ barrier keep
execute if block ~ ~ ~ barrier run scoreboard players reset @s lch_lb_ray_scss
scoreboard players operation @s[scores={lch_lb_ray_scss=0}] lch_lb_ray = $limit lch_lb_ray

tp @s ^ ^ ^1
scoreboard players add @s[scores={lch_lb_ray_scss=0}] lch_lb_ray 1

#end
execute if score @s lch_lb_ray > $limit lch_lb_ray run function origami-games:launch/block/light_bridge/light/end_ray
execute at @s unless block ~ ~ ~ #origami-games:launch/block/light_bridge/passable run function origami-games:launch/block/light_bridge/light/end_ray
