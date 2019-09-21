#called by launch/block/block_breaker/check_destroy

#audiovisuals
playsound entity.item.break block @a[distance=..20] ~ ~ ~ 100 1.75 1

#functionality
loot spawn ~ ~ ~ mine ~ ~ ~
setblock ~ ~ ~ air
