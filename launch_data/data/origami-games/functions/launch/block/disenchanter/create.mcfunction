#@s - disenchanter summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create disenchanter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.disenchanter"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/disenchanter
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["lch_entity","lch_fire","lch_crafter","lch_disenchanter"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.launch.disenchanter"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lch_disenchanter,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/disenchanter
