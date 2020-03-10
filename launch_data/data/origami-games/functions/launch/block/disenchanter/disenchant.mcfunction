#run disenchanter
#@s - disenchanter
#called by launch/crafting/recipe_validity_check

#audiovisuals
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 0 1
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 2 1

#copy enchantments
data modify block ~ ~ ~ Items[{Slot:8b}].id set value "minecraft:enchanted_book"
data modify block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments set from block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments

#remove infused items
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.origami-games.launch.infused.spirit_orb run loot replace block ~ ~ ~ container.7 loot origami-games:launch/items/spirit_orb

#remove enchantments from source
data remove block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments
data remove block ~ ~ ~ Items[{Slot:0b}].tag.RepairCost
data remove block ~ ~ ~ Items[{Slot:0b}].tag.origami-games.launch.infused
execute if block ~ ~ ~ dropper{Items:[{tag:{display:{Lore:['{"translate":"item.spirit_orb.infused.lore","italic":false,"color":"yellow"}']}}}]} run data remove block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore

#summon experience
summon experience_orb ~ ~1 ~ {Motion:[0d,.1d,0d],Value:50s,Tags:["lch_entity","lch_disenchanter_orb"]}
