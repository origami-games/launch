#@s - synthesiser summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#audiovisuals
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 1 1 1
playsound block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 1 1

#create Synthesiser
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:bat_spawn_egg,Count:1b,tag:{CustomModelData:2}}],Tags:["lch_entity","lch_fire","lch_light_bridge"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17}
