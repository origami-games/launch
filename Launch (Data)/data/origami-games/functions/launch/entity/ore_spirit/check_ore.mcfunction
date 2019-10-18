#@s - ore spirit stick dropped from loot table
#called by launch/tick

#audiovisuals
particle crit ~ ~ ~ .5 .5 .5 0 30 normal @a
particle enchanted_hit ~ ~ ~ .5 .5 .5 0 30 normal @a
playsound entity.zombie.converted_to_drowned hostile @a[distance=..20] ~ ~ ~ 1 2 1

#summon base
function origami-games:launch/entity/summon/ore_spirit
#set ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"iron"}}}}}] run replaceitem entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head iron_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"gold"}}}}}] run replaceitem entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head gold_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"coal"}}}}}] as @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] run function origami-games:launch/entity/ore_spirit/coal
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"lapis"}}}}}] run replaceitem entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head lapis_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"diamond"}}}}}] as @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] run function origami-games:launch/entity/ore_spirit/diamond
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"redstone"}}}}}] run replaceitem entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head redstone_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"emerald"}}}}}] as @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] run function origami-games:launch/entity/ore_spirit/emerald
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"nether_quartz"}}}}}] run replaceitem entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head nether_quartz_ore
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spirit_type:"magnetite"}}}}}] run loot replace entity @e[type=vex,tag=lch_ore_spirit,sort=nearest,limit=1] armor.head loot origami-games:launch/items/magnetite_ore

#kill entity
kill @s[type=!player]
