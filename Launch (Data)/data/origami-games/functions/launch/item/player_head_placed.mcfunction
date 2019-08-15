#replaced broken placed player heads
#@s - @e[type=item,tag=!lch_head,nbt={Item:{id:"minecraft:player_head"}}]
#called by launch/clock16

#wolf rider skull
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"6b94a114-f611-49da-b63b-08dd71256389"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/wolf_rider_skull
#wood sprite core
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"f96757e1-a8b9-0375-43cb-66fd85e09575"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/wood_sprite_core
#dead bee
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"bc1ca880-4dc5-4d17-9c05-027a7d3999b3"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/dead_bee
#honeycomb
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"d6fc9a72-b438-4e07-9c40-cacf72809995"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/honeycomb
#fire ant husk
data merge entity @s[nbt={Item:{tag:{SkullOwner:{Id:"bfc3845d-0b61-3d37-b324-a9ee8d634152"}}}}] {Item:{tag:{origami-games:{launch:{item:"fire_ant_husk"}},HideFlags:1,Enchantments:[{id:"unbreaking",lvl:1}],display:{Name:'{"translate":"item.launch.fire_ant_husk","italic":false}'},SkullOwner:{Id:"bfc3845d-0b61-3d37-b324-a9ee8d634152",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjE0MmEzNWFjMGIwNTVlZDUwYTVjYmY4NzBiNmVmMWNjMWY5NGUyNjQyYjliYTY1MGM5ZTAzODVlNmNiZTM2In19fQ=="}]}}}}}

execute unless data entity @s Item.tag.origami-games run kill @s[type=!player]
tag @s add lch_head
