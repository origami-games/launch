#@s - bonsai pot
#called by launch/tick

#check item
execute if block ~ ~ ~ hopper{Items:[{}]} run function origami-games:launch/block/bonsai_pot/check_dirt_count
execute unless data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7

#removal
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run function origami-games:launch/block/bonsai_pot/remove
