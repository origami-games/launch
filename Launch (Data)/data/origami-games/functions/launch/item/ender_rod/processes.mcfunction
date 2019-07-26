#ender rod processes
#@s - dropped ender rod
#called by launch/clock16

execute if entity @s[tag=lch_erod_boom] run function origami-games:launch/item/ender_rod/boom

data merge entity @s[tag=lch_erod_count_1] {CustomName:"{\"text\":\"<1>\",\"color\":\"red\"}",Tags:[lch_erod_boom,lch_erod_counting]}
data merge entity @s[tag=lch_erod_count_2] {CustomName:"{\"text\":\"<2>\",\"color\":\"gold\"}",Tags:[lch_erod_count_1,lch_erod_counting]}
data merge entity @s[tag=!lch_erod_counting] {CustomName:"{\"text\":\"<3>\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:[lch_erod_count_2,lch_erod_counting]}

playsound entity.enderman.scream player @a[distance=..20] ~ ~ ~ .5 2
