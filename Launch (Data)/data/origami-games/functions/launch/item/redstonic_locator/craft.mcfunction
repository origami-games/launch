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
summon item ~ ~ ~ {Item:{id:compass,Count:1b,tag:{origami-games:{launch:{item:"redstonic_locator"}},display:{Name:'{"translate":"item.launch.redstonic_locator","italic":false,"color":"aqua"}',Lore:['{"translate":"item.launch.redstonic_locator.lore"}']},CustomModelData:1}},Motion:[0.0d,0.2d,0.0d],CustomNameVisible:1,CustomName:'{"translate":"item.launch.redstonic_locator","italic":false}',PickupDelay:11s}
