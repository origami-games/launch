#@s - gravity pad summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create gravity pad
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}',Lock:"lch_gravity_pad"} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.gravity_pad"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/gravity_pad
summon armor_stand ~ ~ ~ {Tags:["lch_entity","lch_fire","lch_gravity_pad"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.gravity_pad"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=lch_gravity_pad,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/gravity_pad
