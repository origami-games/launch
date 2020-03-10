#gets custom arrow counts
#@s - player with custom arrow in inv
#called by launch/player/tick

#get arrow count
execute store result score @s lch_expls_ar run clear @s arrow{origami-games:{launch:{arrow:"explosive"}}} 0
execute store result score @s lch_light_ar run clear @s arrow{origami-games:{launch:{arrow:"lightning"}}} 0
execute store result score @s lch_ender_ar run clear @s arrow{origami-games:{launch:{arrow:"ender"}}} 0
execute store result score @s lch_torch_ar run clear @s arrow{origami-games:{launch:{arrow:"torch"}}} 0

#bow usage
scoreboard players operation @s[scores={lch_cstar_usecsb=1..}] lch_cstar_usebow += @s lch_cstar_usecsb
execute if entity @s[scores={lch_cstar_usebow=1..}] run function origami-games:launch/item/arrow/check_arrow

#set previous
scoreboard players operation @s lch_expls_arprev = @s lch_expls_ar
scoreboard players operation @s lch_light_arprev = @s lch_light_ar
scoreboard players operation @s lch_ender_arprev = @s lch_ender_ar
scoreboard players operation @s lch_torch_arprev = @s lch_torch_ar
