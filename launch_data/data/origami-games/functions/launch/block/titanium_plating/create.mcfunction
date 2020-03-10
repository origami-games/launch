#@s - titanium plating summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create titanium plating
setblock ~ ~ ~ spawner{SpawnData:{id:armor_stand,ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{origami-games:{launch:{block:"titanium_plating"}},CustomModelData:7510003}}]}} keep
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{origami-games:{launch:{block:"titanium_plating"}}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{origami-games:{launch:{block:"titanium_plating"}}}}]}} run loot spawn ~ ~ ~ loot origami-games:launch/items/titanium_plating
