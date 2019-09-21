#armour stand management
#@s - armour stand
#called by launch/tick

#arms
execute unless entity @s[tag=lch_entity] run data merge entity @s {ShowArms:1b}
#fire stands
execute if entity @s[tag=lch_fire] run data merge entity @s {Fire:17}

#synthesiser
execute if entity @s[tag=lch_summon_synthesiser] run function origami-games:launch/block/synthesiser/create
execute if entity @s[tag=lch_synthesiser] run function origami-games:launch/block/synthesiser/processes
#light bridge
execute if entity @s[tag=lch_summon_light_bridge] run function origami-games:launch/block/light_bridge/create
execute if entity @s[tag=lch_light_bridge] run function origami-games:launch/block/light_bridge/processes
#gravity pad
execute if entity @s[tag=lch_summon_gravity_pad] run function origami-games:launch/block/gravity_pad/create
execute if entity @s[tag=lch_gravity_pad] run function origami-games:launch/block/gravity_pad/processes
#titanium plating
execute if entity @s[tag=lch_summon_titanium_plating] run function origami-games:launch/block/titanium_plating/create
#magnetite ore
execute if entity @s[tag=lch_summon_magnetite_ore] run function origami-games:launch/block/magnetite_ore/create
#disenchanter
execute if entity @s[tag=lch_summon_disenchanter] run function origami-games:launch/block/disenchanter/create
execute if entity @s[tag=lch_disenchanter] run function origami-games:launch/block/disenchanter/processes
