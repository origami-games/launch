#clock tick (1/16t)
#triggered by launch/load, calls self

#player clock
execute as @a at @s run function origami-games:launch/player/clock16

#fire stands
execute as @e[type=armor_stand,tag=lch_fire] run data merge entity @s {Fire:17}

#Synthesiser
execute at @e[type=item,nbt={Item:{Count:1b,tag:{origami-games:{launch:{item:"redstonic_locator"}}}}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:piston",Count:1b}}] run function origami-games:launch/block/synthesiser/craft

execute as @e[type=armor_stand,tag=lch_synthesiser] at @s if block ~ ~ ~ dropper[triggered=false]{Items:[{}]} run function origami-games:launch/block/synthesiser/crafting/recipe_validity_check

#redstonic locator
execute at @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:glass",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:green_concrete",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function origami-games:launch/item/redstonic_locator/craft

#lightning rods
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b}] at @s run function origami-games:launch/item/lightning_rod/processes
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b}] at @s run function origami-games:launch/item/ender_rod/processes
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}

#reschedule
schedule function origami-games:launch/clock16 16t
