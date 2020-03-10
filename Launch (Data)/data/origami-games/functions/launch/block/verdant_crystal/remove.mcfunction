#@s - verdant_crystal unless block ~ ~ ~ light_blue_stained_glass
#called by launch/block/verdant_crystal/tick

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/verdant_crystal

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:light_blue_stained_glass",Count:1b}},limit=1]
