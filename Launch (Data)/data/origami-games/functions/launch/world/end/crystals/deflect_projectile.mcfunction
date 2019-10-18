#called by launch/world/end/crystals/fight_effects

tag @s add lch_end_crystal_projectile_stopped

execute store result entity @s Motion[0] double -.1 run data get entity @s Motion[0]
execute store result entity @s Motion[1] double -.1 run data get entity @s Motion[1]
execute store result entity @s Motion[2] double -.1 run data get entity @s Motion[2]

kill @s[type=fireball]
kill @s[type=wither_skull]

execute at @e[type=end_crystal,distance=..10,sort=nearest,limit=1] run kill @s[type=#origami-games:launch/projectile,distance=..4]
data merge entity @s {owner:{M:0,L:0}}

particle enchanted_hit ~ ~ ~ 1 1 1 1 100 normal @a
