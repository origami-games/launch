#called by launch/block/bonsai_pot/check_dirt_count

#set CMD
data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510009

#summon drops
execute if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock run function origami-games:launch/block/bonsai_pot/spawn_loot
