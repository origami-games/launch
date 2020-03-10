#lightning rod processes
#@s - dropped lightning rod
#called by launch/clock16

execute if entity @s[tag=lch_lrod_boom] run function origami-games:launch/item/lightning_rod/boom

data merge entity @s[tag=lch_lrod_count_1] {CustomName:"{\"text\":\"<1>\",\"color\":\"red\"}",Tags:[lch_lrod_boom,lch_lrod_counting]}
data merge entity @s[tag=lch_lrod_count_2] {CustomName:"{\"text\":\"<2>\",\"color\":\"gold\"}",Tags:[lch_lrod_count_1,lch_lrod_counting]}
data merge entity @s[tag=!lch_lrod_counting] {CustomName:"{\"text\":\"<3>\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:[lch_lrod_count_2,lch_lrod_counting]}

playsound ui.button.click player @a[distance=..20] ~ ~ ~ .5 2
