#clock tick (1/16t)
#called by launch/tick

#player clock
execute as @a at @s run function origami-games:launch/player/clock16

#custom blocks
execute at @e[tag=lch_titanium_plating] run data merge block ~ ~ ~ {SpawnData:{id:armor_stand}}

#fire stands
execute as @e[type=armor_stand,tag=lch_fire] run data merge entity @s {Fire:17}

#redstonic locator
execute at @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:glass",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:green_concrete",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function origami-games:launch/item/redstonic_locator/craft

#synthesiser
execute at @e[type=item,nbt={Item:{Count:1b,tag:{origami-games:{launch:{item:"redstonic_locator"}}}}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:piston",Count:1b}}] run function origami-games:launch/block/synthesiser/craft

execute as @e[type=armor_stand,tag=lch_synthesiser] at @s if block ~ ~ ~ dropper[triggered=false]{Items:[{}]} run function origami-games:launch/block/synthesiser/crafting/recipe_validity_check

#lightning rods
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b}] at @s run function origami-games:launch/item/lightning_rod/processes
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"lightning_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b}] at @s run function origami-games:launch/item/ender_rod/processes
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{origami-games:{launch:{item:"ender_rod"}}}},OnGround:1b},nbt=!{Item:{Count:1b}}] run data merge entity @s {CustomName:"{\"text\":\"<!>\",\"color\":\"gold\"}",CustomNameVisible:true,Tags:[]}

#mobs
## sound
scoreboard players add @e[tag=lch_sound] lch_snd_ambient 1
execute as @e[tag=lch_sound,scores={lch_snd_ambient=3..}] at @s run function origami-games:launch/entity/sound/ambient

#reset clock
scoreboard players reset core_16 lch_clock
