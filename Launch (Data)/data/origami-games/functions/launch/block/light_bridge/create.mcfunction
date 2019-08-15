#@s - light bridge summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#audiovisuals
playsound block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 1 1

#create light bridge
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.light_bridge"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/light_bridge
summon armor_stand ~ ~ ~ {Tags:["lch_entity","lch_fire","lch_light_bridge"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=lch_light_bridge,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/light_bridge
