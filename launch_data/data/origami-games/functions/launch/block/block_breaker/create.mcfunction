#@s - block breaker item on piston
#called by launch/clock16

#kill summon stand
kill @s[type=!player]

#audiovisuals
playsound block.stone.place block @a[distance=..10] ~ ~ ~ 1 1 1

#create block breaker (NOTE: alignment has happened in the creation detection)
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_block_breaker"],Particle:"block stone",Radius:.5}
