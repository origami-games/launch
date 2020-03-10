#spirit orb infusion
#@s - pickaxe being crushed not already infused with a spirit orb
#called by launch/item/crushing

data modify entity @s Item.tag.origami-games.launch.infused.spirit_orb set value 1b
data modify entity @s Item.tag.display.Lore append value '{"translate":"item.spirit_orb.infused.lore","italic":false,"color":"yellow"}'
kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{Count:1b,tag:{origami-games:{launch:{item:"spirit_orb"}}}}},limit=1]
