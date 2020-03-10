#explosive arrow boom
#@s - landed explosive arrow
#called by launch/tick

kill @s[type=!player]
summon creeper ~ ~ ~ {Fuse:0,ignited:1,CustomName:'{"translate":"item.launch.explosive_arrow"}'}
