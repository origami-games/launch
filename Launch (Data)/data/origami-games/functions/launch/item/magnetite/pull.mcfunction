#throws entity
#@s - @e[type=item,tag=!lch_entity,distance=..6]
#called by launch/player/tick
#CREDIT: NOPEname

execute store result score @s lch_tp_motion_x run data get entity @s Pos[0] 1000000
execute store result score @s lch_tp_motion_y run data get entity @s Pos[1] 1000000
execute store result score @s lch_tp_motion_z run data get entity @s Pos[2] 1000000

tp @s ^ ^ ^0.001 facing entity @e[type=#origami-games:launch/item/magnetite/pull,tag=lch_holding_magnetite,distance=..6,sort=nearest,limit=1]

execute store result score @s lch_tp_motion_dx run data get entity @s Pos[0] 1000000
execute store result score @s lch_tp_motion_dy run data get entity @s Pos[1] 1000000
execute store result score @s lch_tp_motion_dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s lch_tp_motion_dx -= @s lch_tp_motion_x
scoreboard players operation @s lch_tp_motion_dy -= @s lch_tp_motion_y
scoreboard players operation @s lch_tp_motion_dz -= @s lch_tp_motion_z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

execute store result entity @s Motion[0] double 0.0002 run scoreboard players get @s lch_tp_motion_dx
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s lch_tp_motion_dy
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get @s lch_tp_motion_dz

scoreboard players reset @s lch_tp_motion_x
scoreboard players reset @s lch_tp_motion_y
scoreboard players reset @s lch_tp_motion_z
scoreboard players reset @s lch_tp_motion_dx
scoreboard players reset @s lch_tp_motion_dy
scoreboard players reset @s lch_tp_motion_dz
