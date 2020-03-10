#checks, stores and relays the amount of redstone ore in a 5x5 vicinity
#@s - players holding redstonic locator
#called by launch/player/clock16

#store count
execute store result score @s lch_atas_rdstore run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 dropper{Items:[{id:"minecraft:barrier",Count:1b,tag:{origami-games:{launch:{block_test:1b}}}}]} replace redstone_ore
#replace blocks
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 redstone_ore[lit=true] replace dropper{Items:[{id:"minecraft:barrier",Count:1b,tag:{origami-games:{launch:{block_test:1b}}}}]}
#relay
title @s actionbar [{"translate":"item.launch.redstonic_locator","color":"green"},": ",{"score":{"objective":"lch_atas_rdstore","name":"@s"},"color":"dark_green"}," ",{"translate":"block.minecraft.redstone_ore","color":"dark_green"}]
execute if score @s lch_atas_rdstore matches 1.. anchored eyes positioned ^ ^ ^ anchored feet run particle block redstone_block ^ ^ ^2 .1 .1 .1 1 3 normal @s
