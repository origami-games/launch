#checks the server version (e.g. 1.14) - increments, such as 1.14.1, aren't and can't be detected
#called by launch/build/check

#summon test entity
summon armor_stand ~ 0 ~ {HandItems:[{id:trident,Count:1b,tag:{origami-games:{launch:{update:13}}}},{id:lectern,Count:1b,tag:{origami-games:{launch:{update:14}}}}],ArmorItems:[{id:bee_spawn_egg,Count:1b,tag:{origami-games:{launch:{update:15}}}},{},{},{}],Tags:["lch_ver_check"],Invisible:1b,Marker:1b,Small:1b,NoBasePlate:1b,Invulnerable:1b,Silent:1b}
#test hand items
execute if entity @e[type=armor_stand,tag=lch_ver_check,nbt={HandItems:[{tag:{origami-games:{launch:{update:13}}}}]}] run scoreboard players set server_version lch_data 13
execute if entity @e[type=armor_stand,tag=lch_ver_check,nbt={HandItems:[{tag:{origami-games:{launch:{update:14}}}}]}] run scoreboard players set server_version lch_data 14
execute if entity @e[type=armor_stand,tag=lch_ver_check,nbt={ArmorItems:[{tag:{origami-games:{launch:{update:15}}}}]}] run scoreboard players set server_version lch_data 15
#disable pack is score is too low
execute unless score server_version lch_data matches 14.. run tellraw @a {"translate":"text.launch.server_version.too_low","color":"red"}
execute unless score server_version lch_data matches 14.. run datapack disable "file/launch_data"
execute unless score server_version lch_data matches 14.. run tellraw @a {"translate":"text.launch.server_version.too_low.done","color":"green"}
#kill test entities
kill @e[type=armor_stand,tag=lch_ver_check]
