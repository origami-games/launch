#@s - @e[type=item,nbt={Item:{tag:{origami-games:{launch:{}}}}}]
#called by launch/entity/management/item

# lightning/ender rods
execute if entity @s[nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b}] run function origami-games:launch/item/lightning_rod/processes
execute if entity @s[nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}
execute if entity @s[nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b}] run function origami-games:launch/item/ender_rod/processes
execute if entity @s[nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}
