#item management
#@s - item
#called by launch/tick

#custom blocks
## spawner drops
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{}}}}}}] run function origami-games:launch/block/check_spawner_item

#custom mobs
## ore spirits
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{function:"ore_spirit"}}}}}] run function origami-games:launch/entity/ore_spirit/check_ore

#magnetism
execute unless entity @s[tag=lch_entity] if entity @e[type=#origami-games:launch/item/magnetite/pull,tag=lch_holding_magnetite,distance=..6] run function origami-games:launch/item/magnetite/pull

#renewals
execute if entity @s[tag=lch_sprite_item] if entity @e[tag=lch_sprite,tag=lch_vehicle_root,distance=..1] run data merge entity @s {Age:5850}

#heads
execute if entity @s[tag=!lch_head,tag=!lch_entity,nbt={Item:{id:"minecraft:player_head"}}] if data entity @s Item.tag unless data entity @s Item.tag.origami-games unless data entity @s Item.tag.SkullOwner.Name run function origami-games:launch/item/recover_player_head

#crushing
execute if block ~ ~-1 ~ #anvil if block ~ ~ ~ moving_piston run function origami-games:launch/item/crushing
