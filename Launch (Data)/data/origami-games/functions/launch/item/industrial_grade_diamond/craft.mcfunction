#craft type = crushing
#      item = launch:industrial_grade_diamond
#    recipe = 1 diamond
#called by launch/item/crushing

tag @s add lch_being_crushed

loot spawn ~ ~ ~ loot origami-games:launch/items/industrial_grade_diamond
data modify entity @e[type=item,tag=!lch_being_crushed,distance=0,limit=1] Item.Count set from entity @s Item.Count
kill @s[type=!player]

tag @s remove lch_being_crushed
