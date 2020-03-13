#@s - gravity pad summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create gravity pad
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}',Lock:"lch_gravity_pad"} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.gravity_pad"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/gravity_pad
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["lch_entity","lch_fire","lch_gravity_pad"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.launch.gravity_pad"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lch_gravity_pad,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/gravity_pad
