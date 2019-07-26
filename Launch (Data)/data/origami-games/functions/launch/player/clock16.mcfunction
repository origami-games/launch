#clock player tick (1/16t)
#@s - @a
#called by launch/clock16

#redstonic locator
tag @s add lch_holding_redstonic_locator
tag @s[nbt=!{SelectedItem:{tag:{origami-games:{launch:{item:"redstonic_locator"}}}}},nbt=!{Inventory:[{Slot:-106b,tag:{origami-games:{launch:{item:"redstonic_locator"}}}}]}] remove lch_holding_redstonic_locator
execute if entity @s[tag=lch_holding_redstonic_locator] run function origami-games:launch/item/redstonic_locator/check_location
