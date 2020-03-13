#@s - bonsai pot summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create bonsai_pot
setblock ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.launch.bonsai_pot"}'} keep
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/bonsai_pot
execute align xyz run summon armor_stand ~.5 ~.375 ~.5 {Tags:["lch_entity","lch_fire","lch_crafter","lch_bonsai_pot"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.launch.bonsai_pot"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lch_bonsai_pot,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/bonsai_pot
