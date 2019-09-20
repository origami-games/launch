#run disenchanter
#@s - disenchanter
#called by launch/crafting/recipe_validity_check

#audiovisuals
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 0 1
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 2 1

#copy enchantments
data modify block ~ ~ ~ Items[{Slot:8b}].id set value "minecraft:enchanted_book"
data modify block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments set from block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments

#remove enchantments from source
data remove block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments

#summon experience
execute store result storage origami-games:launch/block/disenchanter OrbValue short 20 run data get block ~ ~ ~ Items[{Slot:0b}].tag.RepairCost
data remove block ~ ~ ~ Items[{Slot:0b}].tag.RepairCost
summon experience_orb ~ ~1 ~ {Motion:[0d,.1d,0d],Value:10s,Tags:["lch_disenchanter_orb"]}
execute positioned ~ ~1 ~ align xyz run data modify entity @e[type=experience_orb,tag=lch_disenchanter_orb,dx=0,dy=0,dz=0,sort=nearest,limit=1] Value set from storage origami-games:launch/block/disenchanter OrbValue
execute positioned ~ ~1 ~ align xyz run tag @e[type=experience_orb,dx=0,dy=0,dz=0,sort=nearest,limit=1] remove lch_disenchanter_orb
