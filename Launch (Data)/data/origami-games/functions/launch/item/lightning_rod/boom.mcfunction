#lightning rod explosion
#@s - lightning rod to explode
#called by launch/item/lightning_rod/processes

execute if block ~ ~-1 ~ spawner{SpawnData:{id:"minecraft:creeper"}} run data merge block ~ ~-1 ~ {MaxSpawnDelay:801s,SpawnData:{id:"minecraft:creeper",powered:true},SpawnPotentials:[{Entity:{id:"minecraft:creeper",powered:true},Weight:1}]}
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{ender_rod:1b}}}}}] run function origami-games:launch/item/lightning_rod/ender_rod/teleportation

summon lightning_bolt
kill @s[type=!player]
