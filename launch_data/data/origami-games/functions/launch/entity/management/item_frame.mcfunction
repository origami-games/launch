#item frame management
#@s - item frame
#called by launch/tick

#mistake
kill @s[tag=lch_mistake_spawn]

#synthesiser
execute if entity @s[tag=lch_summon_synthesiser] run function origami-games:launch/block/synthesiser/create
#light bridge
execute if entity @s[tag=lch_summon_light_bridge] run function origami-games:launch/block/light_bridge/create
#gravity pad
execute if entity @s[tag=lch_summon_gravity_pad] run function origami-games:launch/block/gravity_pad/create
#titanium plating
execute if entity @s[tag=lch_summon_titanium_plating] run function origami-games:launch/block/titanium_plating/create
#magnetite ore
execute if entity @s[tag=lch_summon_magnetite_ore] run function origami-games:launch/block/magnetite_ore/create
#disenchanter
execute if entity @s[tag=lch_summon_disenchanter] run function origami-games:launch/block/disenchanter/create
#bonsai pot
execute if entity @s[tag=lch_summon_bonsai_pot] positioned ~ ~.375 ~ run function origami-games:launch/block/bonsai_pot/create
