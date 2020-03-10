#@s - titanium plating summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create titanium plating
setblock ~ ~ ~ spawner{SpawnData:{id:armor_stand,ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{origami-games:{launch:{block:"magnetite_ore"}},CustomModelData:7510004}}]}} keep
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{origami-games:{launch:{block:"magnetite_ore"}}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{origami-games:{launch:{block:"magnetite_ore"}}}}]}} run loot spawn ~ ~ ~ loot origami-games:launch/items/magnetite_ore
