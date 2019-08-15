#mob spawn check
#@s - @e[type=!SPRITE,type=!player,tag=!lch_no_check]
#called by launch/tick

#random
execute store result score @s lch_mo_sp_random run data get entity @s UUIDMost .000000000000000001
execute if entity @s[scores={lch_mo_sp_random=..-1}] run scoreboard players operation @s lch_mo_sp_random *= #-1 lch_mo_sp_random

execute if score @s lch_mo_sp_random <= $custom_threshold lch_mo_sp_random run tag @s add lch_replace
execute if entity @s[tag=lch_replace] run function origami-games:launch/entity/spawning/check_conditions

#post
scoreboard players reset @s lch_mo_sp_random
tag @s add lch_no_check
