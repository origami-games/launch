#@s - gravity pad unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.gravity_pad"}'}
#called by launch/block/gravity_pad/tick

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/gravity_pad

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}]
