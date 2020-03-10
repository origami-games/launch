#toggle gravity pad gravity
#@s - gravity pad triggered
#called by launch/block/gravity_pad/processes

#enable/disable gravity
tag @s add lch_gravity_pad_no_grav
tag @s[nbt={NoGravity:1b}] remove lch_gravity_pad_no_grav
data merge entity @s[tag=lch_gravity_pad_no_grav] {NoGravity:1}
data merge entity @s[tag=!lch_gravity_pad_no_grav] {NoGravity:0}

scoreboard players operation @s lch_gp_cooldown = $start lch_gp_cooldown

#audiovisuals
execute if entity @s[tag=lch_gravity_pad_no_grav] run particle dust 1 0 0 2 ~ ~1 ~ 0 .1 0 0 5 normal @a
execute if entity @s[tag=!lch_gravity_pad_no_grav] run particle dust 0 .85 0 2 ~ ~1 ~ 0 .1 0 0 5 normal @a
