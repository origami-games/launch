#called by launch/entity/spawning/check_custom

tag @e[type=!#origami-games:launch/sprite,type=!player,tag=lch_check_spawn,distance=0,limit=1] add lch_no_check
kill @s[type=!player]
