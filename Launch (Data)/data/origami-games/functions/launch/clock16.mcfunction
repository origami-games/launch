#clock tick (1/16t)
#called by launch/tick

#player clock
execute as @a at @s run function origami-games:launch/player/clock16

#general entity management
execute as @e[type=item] at @s run function origami-games:launch/entity/management/item16

#custom mobs
## sounds
scoreboard players add @e[tag=lch_sound] lch_snd_ambient 1
execute as @e[tag=lch_sound,scores={lch_snd_ambient=3..}] at @s run function origami-games:launch/entity/sound/ambient

#general entity management
execute as @e[type=armor_stand] at @s run function origami-games:launch/entity/management/armour_stand16
execute as @e[type=falling_block,tag=lch_falling_block_no_despawn] run data modify entity @s Time set value -32767
execute as @e[type=zombie,tag=lch_zombie_no_drowned] run data modify entity @s DrownedConversionTime set value 32767

#world gen
execute store result score $chunks_generating lch_world_gen if entity @e[type=area_effect_cloud,tag=lch_chunk]
title @a[tag=lch_debug] actionbar [{"text":"lch_chunk :: "},{"score":{"objective":"lch_world_gen","name":"$chunks_generating"}}]

#reset clock
scoreboard players reset core_16 lch_clock
