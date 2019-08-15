execute at @e[type=enderman,distance=0..] align xz run summon minecraft:falling_block ~.5 80 ~.5 {BlockState:{Name:chorus_flower},Time:1}
execute at @e[type=enderman,distance=0..] align xz run summon minecraft:falling_block ~.5 80 ~20.5 {BlockState:{Name:chorus_flower},Time:1}
execute at @e[type=enderman,distance=0..] align xz run summon minecraft:falling_block ~20.5 80 ~.5 {BlockState:{Name:chorus_flower},Time:1}
execute at @e[type=enderman,distance=0..] align xz run summon minecraft:falling_block ~.5 80 ~-20.5 {BlockState:{Name:chorus_flower},Time:1}
execute at @e[type=enderman,distance=0..] align xz run summon minecraft:falling_block ~-20.5 80 ~.5 {BlockState:{Name:chorus_flower},Time:1}
execute as @e[type=enderman,distance=0..] run data merge entity @s {Health:0,DeathTime:19,DeathLootTable:"minecraft:empty"}
execute at @e[type=area_effect_cloud,tag=lch_world_marker_end] run gamerule randomTickSpeed 10000
scoreboard players operation $end_chorus_speed_up lch_world_gen = $end_chorus_speed_up_start lch_world_gen
