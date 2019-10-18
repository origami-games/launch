#item crushing
#@s - item if block ~ ~-1 ~ #anvil if block ~ ~ ~ moving_piston
#called by launch/entity/management/item

#industrial grade diamond
execute if entity @s[nbt={Item:{id:"minecraft:diamond"}}] run function origami-games:launch/item/industrial_grade_diamond/craft
