#@s - synthesiser summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create synthesiser
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.synthesiser"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/synthesiser
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["lch_entity","lch_fire","lch_crafter","lch_synthesiser"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.launch.synthesiser"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lch_synthesiser,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/synthesiser
