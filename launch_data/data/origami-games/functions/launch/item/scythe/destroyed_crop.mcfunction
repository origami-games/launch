#called by launch/player/tick

tag @s[nbt=!{SelectedItem:{tag:{origami-games:{launch:{item:"scythe"}}}}}] add lch_sc_casted

tag @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] add lch_sc_seed
tag @e[type=item,nbt={Item:{id:"minecraft:carrot"}}] add lch_sc_seed
tag @e[type=item,nbt={Item:{id:"minecraft:potato"}}] add lch_sc_seed
tag @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] add lch_sc_seed

execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^ anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^1.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^2.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^3.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^4.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy
execute unless entity @s[tag=lch_sc_casted] anchored eyes positioned ^ ^ ^5.5 anchored feet if block ~ ~ ~ farmland align xyz positioned ~ ~1 ~ at @e[type=item,tag=lch_sc_seed,dx=0,dy=0,dz=0] run function origami-games:launch/item/scythe/destroy

scoreboard players reset @s lch_sc_minewheat
scoreboard players reset @s lch_sc_minepotat
scoreboard players reset @s lch_sc_minecarro
scoreboard players reset @s lch_sc_minebeetr
tag @s remove lch_sc_casted
