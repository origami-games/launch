summon bat ~ ~ ~ {Health:1,PersistenceRequired:1b,Tags:["lch_entity","lch_sprite","lch_wood_sprite","lch_vehicle_root"],CustomName:'{"translate":"entity.launch.wood_sprite"}',DeathLootTable:"origami-games:launch/entities/wood_sprite",ArmorDropChances:[0.5F,0.5F,0.1F,1.0F],Silent:1,ActiveEffects:[{Id:12,Amplifier:0,Duration:1999980,ShowParticles:0b},{Id:14,Amplifier:0,Duration:1999980,ShowParticles:0b}],Passengers:[{id:item,Item:{id:player_head,Count:1,tag:{HideFlags:1,Enchantments:[{id:"protection",lvl:1}],display:{Name:'{"translate":"item.launch.wood_sprite_core","italic":false}',Lore:['{"translate":"item.launch.wood_sprite_core.lore"}']},SkullOwner:{Id:"f96757e1-a8b9-0375-43cb-66fd85e09575",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk3OWZlN2IzMmZiN2ZjOTc0NmUxNTc0NzFmOTc1ZjMxYWZjYjU4ZmQ4YjVhY2I4YmY1M2VjMzUwZjRkNWMyIn19fQ=="}]}}}},PickupDelay:32767,Tags:["lch_entity","lch_vehicle","lch_sprite","lch_sprite_item","lch_wood_sprite"],Passengers:[{id:area_effect_cloud,Particle:end_rod,CustomName:'{"translate":"entity.launch.wood_sprite"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648,Radius:0.2,Tags:["lch_entity","lch_passenger"]}]}]}
tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block
