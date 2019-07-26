#ender arrow usage
#@s - newly fired ender arrow
#called by launch/item/arrow/check_arrow

#summon ender pearl
summon ender_pearl ~ ~ ~
data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Pos set from entity @s Pos
data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Motion set from entity @s Motion
data modify entity @e[type=ender_pearl,sort=nearest,limit=1] owner.M set from entity @p UUIDMost
data modify entity @e[type=ender_pearl,sort=nearest,limit=1] owner.L set from entity @p UUIDLeast

#kill arrow
kill @s
