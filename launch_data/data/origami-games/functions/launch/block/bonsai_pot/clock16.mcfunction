#@s - bonsai pot
#called by launch/entity/management/armor_stand16

#check item
execute if block ~ ~ ~ hopper{Items:[{}]} run function origami-games:launch/block/bonsai_pot/check_dirt_count
execute unless data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510007
