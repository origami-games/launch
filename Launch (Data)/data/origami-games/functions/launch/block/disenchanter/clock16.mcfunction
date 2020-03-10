#@s - disenchanter
#called by launch/entity/management/armour_stand16

#recipes
execute if block ~ ~ ~ dropper[triggered=false]{Items:[{tag:{Enchantments:[{}]},Slot:0b},{id:"minecraft:book",Count:1b,Slot:8b}]} run function origami-games:launch/crafting/recipe_validity_check
