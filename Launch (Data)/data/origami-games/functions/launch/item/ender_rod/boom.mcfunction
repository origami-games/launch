#ender rod explosion
#@s - ender rod to explode
#called by launch/item/ender_rod/processes

execute positioned ~-2.5 ~ ~-2.5 run tp @e[type=!#origami-games:launch/item/lightning_rod/ender_rod/no_target,dx=4,dy=4,dz=4] ~2.5 ~ ~2.5
particle portal ~ ~ ~ .5 .5 .5 1 300 normal @a
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 1 1
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.enderman.scream player @a[distance=..20] ~ ~ ~ 1 .6 1

summon lightning_bolt
kill @s[type=!player]
