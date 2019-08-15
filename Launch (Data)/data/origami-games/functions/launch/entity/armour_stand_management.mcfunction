#armour stand management
#@s - armour stand
#called by launch/tick

#arms
execute unless entity @s[tag=lch_entity] run data merge entity @s {ShowArms:1b}

#synthesiser
execute if entity @s[tag=lch_summon_synthesiser] run function origami-games:launch/block/synthesiser/create
execute if entity @s[tag=lch_synthesiser] unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'} run function origami-games:launch/block/synthesiser/remove
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
