#craft type = floor
#      item = launch:redstonic_locator
#    recipe = 1 quartz, 1 glass, 1 green concrete, 1 redstone
#called by launch/clock16

#audiovisuals
function origami-games:launch/item/floor_craft_base

#kill entities
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:quartz",Count:1b}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:glass",Count:1b}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:green_concrete",Count:1b}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:redstone",Count:1b}}]

#summon item
loot spawn ~ ~ ~ loot origami-games:launch/items/redstonic_locator
data modify entity @e[type=item,sort=nearest,limit=1] CustomName set from entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name
data merge entity @e[type=item,sort=nearest,limit=1] {Motion:[0.0d,0.2d,0.0d],PickupDelay:11s,CustomNameVisible:1}
