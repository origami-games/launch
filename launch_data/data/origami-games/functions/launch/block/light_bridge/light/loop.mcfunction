#ray loop

scoreboard players add @s lch_lb_ray 1
execute at @s run function origami-games:launch/block/light_bridge/light/check_block
execute unless score @s lch_lb_ray > $limit lch_lb_ray run function origami-games:launch/block/light_bridge/light/loop
