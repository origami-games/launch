#replaced broken placed player heads
#@s - @e[type=item,tag=!lch_head,nbt={Item:{id:"minecraft:player_head"}}]
#called by launch/tick

#wolf rider skull
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"6b94a114-f611-49da-b63b-08dd71256389"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/wolf_rider_skull
#wood sprite core
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"f96757e1-a8b9-0375-43cb-66fd85e09575"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/wood_sprite_core
#dead bee
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"bc1ca880-4dc5-4d17-9c05-027a7d3999b3"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/dead_bee
#honeycomb
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"d6fc9a72-b438-4e07-9c40-cacf72809995"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/honeycomb
#fire ant husk
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Id:"bfc3845d-0b61-3d37-b324-a9ee8d634152"}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/fire_ant_husk
#spirit orb
execute if entity @s[nbt={Item:{tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1NjYxMjMwNDQwMTYsInByb2ZpbGVJZCI6IjUwYzdlN2M1MjQwNzQxMDI4NzVmZTRiMWY0OWVhNjFhIiwicHJvZmlsZU5hbWUiOiJBbmRhbnRlTUMiLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzk4NmY4NzczNzJlYzRlNzMzNzMyMjBhOWVlMTAxY2EwNmZjZTg4YmMyZDFlNzFiMjUxODAzZTUyOTVmYTNhM2UifX19"}]}}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/spirit_orb

execute unless data entity @s Item.tag.origami-games run kill @s[type=!player]
tag @s add lch_head
