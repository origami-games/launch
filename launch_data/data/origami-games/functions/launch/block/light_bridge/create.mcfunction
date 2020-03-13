#@s - light bridge summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#audiovisuals
playsound block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 1 1

#create light bridge
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.light_bridge"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/light_bridge
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["lch_entity","lch_fire","lch_light_bridge"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lch_light_bridge,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/light_bridge
