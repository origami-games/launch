#checks dimension and position of player for redstonic locator
#@s - player holding redstonic locator
#called by launch/player/clock16

#store y pos
execute store result score @s lch_pl_y run data get entity @s Pos[1]

#check location
execute if score @s lch_pl_y <= $redstonic_locator_limit lch_pl_y if entity @s[nbt={Dimension:0}] run function origami-games:launch/item/redstonic_locator/check_redstone_ore
execute if score @s lch_pl_y > $redstonic_locator_limit lch_pl_y run title @s actionbar [{"translate":"item.launch.redstonic_locator","color":"red"},": ",{"translate":"item.launch.redstonic_locator.ore_detection.too_high","color":"dark_red","underlined":true}]
execute unless entity @s[nbt={Dimension:0}] run title @s actionbar [{"translate":"item.launch.redstonic_locator","color":"red"},": ",{"translate":"item.launch.redstonic_locator.ore_detection.invalid_dimension","color":"dark_red","underlined":true}]
