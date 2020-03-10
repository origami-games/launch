#item management
#@s - item
#called by launch/clock16

#nbt checks
tag @s[nbt={Item:{tag:{origami-games:{launch:{}}}}}] add lch_item_has_launch_data

#custom blocks
## block breaker
execute if entity @s[nbt={OnGround:1b,Item:{tag:{origami-games:{launch:{block:"block_breaker"}}},Count:1b}}] if block ~ ~-1 ~ #origami-games:launch/piston align xyz positioned ~.5 ~-.5 ~.5 unless entity @e[type=area_effect_cloud,tag=lch_block_breaker,distance=...1] run function origami-games:launch/block/block_breaker/create
#synthesiser
execute if entity @s[nbt={OnGround:1b,Item:{Count:1b,tag:{origami-games:{launch:{item:"redstonic_locator"}}}}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:iron_block",Count:1b}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:crafting_table",Count:1b}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:piston",Count:1b}}] run function origami-games:launch/block/synthesiser/craft

#custom items
execute if entity @s[tag=lch_item_has_launch_data] run function origami-games:launch/entity/management/item/has_launch_data
## redstonic locator
execute if entity @s[tag=!lch_entity,nbt={OnGround:1b,Item:{id:"minecraft:quartz",Count:1b}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:glass",Count:1b}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:green_concrete",Count:1b}}] if entity @e[type=item,distance=...5,nbt={OnGround:1b,Item:{id:"minecraft:redstone",Count:1b}}] run function origami-games:launch/item/redstonic_locator/craft
