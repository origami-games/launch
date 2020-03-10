#@s - verdant_crystal summon stand
#called by launch/tick

#kill summoning entity
tp @s[type=!player] ~ -512 ~
data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
fill ~ ~ ~ ~ ~ ~ air replace command_block

#create verdant crystal
setblock ~ ~ ~ light_blue_stained_glass keep
summon area_effect_cloud ~ ~ ~ {Tags:["lch_entity","lch_verdant_crystal"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'{"translate":"block.launch.verdant_crystal"}'}
