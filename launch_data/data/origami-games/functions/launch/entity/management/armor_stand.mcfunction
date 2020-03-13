#armour stand management
#@s - armour stand
#called by launch/tick

#synthesiser
execute if entity @s[tag=lch_synthesiser] run function origami-games:launch/block/synthesiser/tick
#light bridge
execute if entity @s[tag=lch_light_bridge] run function origami-games:launch/block/light_bridge/tick
#gravity pad
execute if entity @s[tag=lch_gravity_pad] run function origami-games:launch/block/gravity_pad/tick
#disenchanter
execute if entity @s[tag=lch_disenchanter] run function origami-games:launch/block/disenchanter/tick
#bonsai pot
execute if entity @s[tag=lch_bonsai_pot] run function origami-games:launch/block/bonsai_pot/tick
