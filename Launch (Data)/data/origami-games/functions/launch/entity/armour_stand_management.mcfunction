#armour stand management
#@s - armour stand
#called by launch/tick

#arms
execute unless entity @s[tag=lch_entity] run data merge entity @s {ShowArms:1b}

#synthesiser
execute if entity @s[tag=lch_summon_synthesiser] run function origami-games:launch/block/synthesiser/create
execute if entity @s[tag=lch_synthesiser] run function origami-games:launch/block/synthesiser/processes

#light bridge
execute if entity @s[tag=lch_summon_light_bridge] run function origami-games:launch/block/light_bridge/create
execute if entity @s[tag=lch_light_bridge] run function origami-games:launch/block/light_bridge/processes
