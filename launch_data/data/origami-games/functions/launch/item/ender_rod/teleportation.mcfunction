#ender rod teleportation
#@s - ender rod to explode
#called by launch/item/lightning_rod/boom

execute positioned ~-2.5 ~ ~-2.5 run tp @e[type=!#origami-games:launch/item/lightning_rod/ender_rod/no_target,dx=4,dy=4,dz=4] ~2.5 ~ ~2.5

particle portal ~ ~ ~ .5 .5 .5 1 300 normal @a
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 1 1
playsound entity.enderman.teleport player @a[distance=..20] ~ ~ ~ 1 0 1
