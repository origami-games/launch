summon wolf ~ ~ ~ {Tags:["lch_entity","lch_wolf_rider"],DeathLootTable:"origami-games:launch/entities/wolf_rider/vehicle",Angry:1,PersistenceRequired:1b,CustomName:'{"translate":"entity.launch.wolf_rider"}',Attributes:[{Name:generic.maxHealth,Base:30}],Health:30.0f,ArmorDropChances:[0.1F,0.5F,1.0F,0.5F],Passengers:[{id:zombie,Tags:["lch_entity","lch_wolf_rider"],CustomName:'{"translate":"entity.launch.wolf_rider"}',Attributes:[{Name:zombie.spawnReinforcements,Base:0.0F}],IsBaby:1b,ArmorItems:[{id:leather_boots,Count:1,tag:{display:{color:15724767}}},{id:leather_leggings,Count:1,tag:{display:{color:13224377}}},{id:leather_chestplate,Count:1,tag:{display:{color:9867662}}},{id:player_head,Count:1,tag:{HideFlags:1,Enchantments:[{id:"unbreaking",lvl:10}],display:{Name:'{"translate":"item.launch.wolf_rider_skull","italic":false}'},SkullOwner:{Id:"6b94a114-f611-49da-b63b-08dd71256389",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhlZDYyOTZlZTgzZTNmNzVkMmNiNGY4ZjIxMTM4NWM3MjJkZTJiNjAxYzYzNzg1MTMzZGNiNWM1ZmZkM2RkIn19fQ=="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.02F],HandItems:[{id:blaze_rod,Count:1,tag:{display:{Name:'{"translate":"item.launch.lucky_rod","italic":false}',Lore:['{"translate":"item.launch.lore"}']},Enchantments:[{id:"sharpness",lvl:1},{id:"looting",lvl:3}]}},{}],HandDropChances:[0.05F,0.085F],PersistenceRequired:1b,DeathLootTable:"origami-games:launch/entities/wolf_rider/passenger"}]}
tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block