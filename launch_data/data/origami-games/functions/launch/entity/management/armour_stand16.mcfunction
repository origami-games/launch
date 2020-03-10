#armour stand management
#@s - armour stand
#called by launch/clock16

#arms
execute unless entity @s[tag=lch_entity] run data modify entity @s ShowArms set value 1
#fire
execute if entity @s[tag=lch_fire] run data modify entity @s Fire set value 17

#synthesiser
execute if entity @s[tag=lch_synthesiser] run function origami-games:launch/block/synthesiser/clock16
#disenchanter
execute if entity @s[tag=lch_disenchanter] run function origami-games:launch/block/disenchanter/clock16
#bonsai pot
execute if entity @s[tag=lch_bonsai_pot] run function origami-games:launch/block/bonsai_pot/clock16
