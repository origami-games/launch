#@s - block breaker unless block ~ ~ ~ #origami-games:launch/piston
#called by launch/block/block_breaker/processes

#reimburse items
loot spawn ~ ~ ~ loot origami-games:launch/blocks/block_breaker

#kill entities
kill @s[type=!player]
