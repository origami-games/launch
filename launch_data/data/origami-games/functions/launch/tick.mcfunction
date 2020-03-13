#runs every tick (20/s)
#called by #tick

#player tick
execute as @a at @s run function origami-games:launch/player/tick

#clock
scoreboard players add core_16 lch_clock 1
scoreboard players add world_4 lch_clock 1
execute if score core_16 lch_clock matches 16.. run function origami-games:launch/clock16
execute if score world_4 lch_clock matches 4.. run function origami-games:launch/world/clock4

#time
execute store result score daytime lch_data run time query daytime
execute store result score day lch_data run time query day
## year
scoreboard players operation year lch_data = day lch_data
scoreboard players operation year lch_data /= #year_length lch_data
## year * year length
scoreboard players operation #year_subtractor lch_data = year lch_data
scoreboard players operation #year_subtractor lch_data *= #year_length lch_data
## month 1-12 (default)
scoreboard players operation month lch_data = day lch_data
scoreboard players operation month lch_data -= #year_subtractor lch_data
scoreboard players operation #month_divider lch_data = #year_length lch_data
scoreboard players operation #month_divider lch_data /= #month_amount lch_data
scoreboard players operation month lch_data /= #month_divider lch_data
scoreboard players add month lch_data 1
## month amount / season amount (default = 12/4 = 3)
scoreboard players operation #season_divider lch_data = #month_amount lch_data
scoreboard players operation #season_divider lch_data /= #season_amount lch_data
## season 1-4 (default)
### 1 = spring -> month 1-3
### 2 = summer -> month 4-6
### 3 = autumn -> month 7-9
### 4 = winter -> month 10-12
scoreboard players operation season lch_data = month lch_data
scoreboard players operation season lch_data /= #season_divider lch_data
scoreboard players add season lch_data 1
execute if score season lch_data > #season_amount lch_data run scoreboard players operation season lch_data = #season_amount lch_data
##make time user-readable on scoreboard
scoreboard players add year lch_data 1
scoreboard players add day lch_data 1
## season functionality
execute if score season lch_data matches 1 run function origami-games:launch/world/season/spring
execute if score season lch_data matches 2 run function origami-games:launch/world/season/summer
execute if score season lch_data matches 3 run function origami-games:launch/world/season/autumn
execute if score season lch_data matches 4 run function origami-games:launch/world/season/winter

#world generation
## end
execute in the_end unless entity @e[type=area_effect_cloud,tag=lch_world_marker_end,distance=0..] run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_world_marker_end"],CustomName:'"lch_world_marker_end"'}

execute store result score $ender_dragon_count lch_world_gen if entity @e[type=ender_dragon]
execute if score $ender_dragon_count lch_world_gen > $ender_dragon_count_prev lch_world_gen in the_end run function origami-games:launch/world/end/dragon_fight/regenerate_structures
scoreboard players operation $ender_dragon_count_prev lch_world_gen = $ender_dragon_count lch_world_gen

#general entity management
execute as @e[type=area_effect_cloud] at @s run function origami-games:launch/entity/management/area_effect_cloud
execute as @e[type=item_frame] at @s run function origami-games:launch/entity/management/item_frame
execute as @e[type=armor_stand] at @s run function origami-games:launch/entity/management/armor_stand
execute as @e[type=item] at @s run function origami-games:launch/entity/management/item

#custom blocks
## gravity pads
scoreboard players remove @e[type=!#origami-games:launch/block/gravity_pad/no_toggle,scores={lch_gp_cooldown=1..}] lch_gp_cooldown 1
scoreboard players reset @e[type=!#origami-games:launch/block/gravity_pad/no_toggle,scores={lch_gp_cooldown=0}] lch_gp_cooldown

#custom mobs
## mob spawning
tag @e[type=!#origami-games:launch/entity/spawning/no_check,tag=!lch_no_check,tag=!lch_entity] add lch_check_spawn
execute as @e[type=!#origami-games:launch/entity/spawning/no_check,tag=!lch_entity,tag=lch_check_spawn] at @s run function origami-games:launch/entity/spawning/entity_check
## sound
execute as @e[tag=lch_sound] at @s run function origami-games:launch/entity/sound/tick
## sand crawler
effect clear @e[type=husk,tag=lch_sand_crawler] levitation

#magnetite
tag @e[type=#origami-games:launch/item/magnetite/pull,tag=lch_holding_magnetite,predicate=!origami-games:launch/item/magnetite/holding] remove lch_holding_magnetite
tag @e[type=#origami-games:launch/item/magnetite/pull,predicate=origami-games:launch/item/magnetite/holding] add lch_holding_magnetite

#removal
execute as @e[tag=lch_passenger] at @s unless entity @e[tag=lch_vehicle,distance=..1] run tag @s add lch_remove
execute as @e[tag=lch_vehicle] unless data entity @s Passengers run tag @s add lch_remove

tag @e[type=slime,tag=!lch_remove,name="entity.launch.sand_crawler",nbt=!{Size:1}] add lch_remove

execute as @e[tag=lch_remove] run data merge entity @s {Health:0,DeathTime:19,Time:0,Duration:0,Size:0,Age:6000,DeathLootTable:"minecraft:empty"}
