#@s - synthesiser summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#audiovisuals
playsound minecraft:block.stone.break block @a[distance=..10] ~ ~ ~ 1 1 1

#create Synthesiser
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:bat_spawn_egg,Count:1b,tag:{CustomModelData:1}}],Tags:["lch_entity","lch_fire","lch_crafter","lch_synthesiser"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.synthesiser"}',Fire:17}
