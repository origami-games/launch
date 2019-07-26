#@s - light bridge unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.light_bridge"}'}
#called by launch/block/light_bridge/processes

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.light_bridge"}'}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/light_bridge

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.light_bridge"}'}}}}]

#remove bridge
function origami-games:launch/block/light_bridge/light/remove

#audiovisuals
playsound block.beacon.deactivate block @a[distance=..10] ~ ~ ~ 1 1 1
