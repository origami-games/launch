#called by launch/entity/ore_spirit/check_ore

setblock ~ ~ ~ coal_ore
loot replace entity @s armor.head mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:fortune,lvl:3}]}
data modify entity @s ArmorItems[3].id set value "minecraft:coal_ore"
setblock ~ ~ ~ air
