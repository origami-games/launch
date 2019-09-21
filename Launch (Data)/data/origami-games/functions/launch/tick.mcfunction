#runs every tick (20/s)
#called by #cardboard:tick

#clock
scoreboard players add core_16 lch_clock 1
scoreboard players add world_4 lch_clock 1
execute if score core_16 lch_clock matches 16.. run function origami-games:launch/clock16
execute if score world_4 lch_clock matches 4.. run function origami-games:launch/world/clock4

#time
## year
scoreboard players operation $year lch_time = day cardb_data
scoreboard players operation $year lch_time /= #year_length lch_time
## year * year length
scoreboard players operation #year_subtractor lch_time = $year lch_time
scoreboard players operation #year_subtractor lch_time *= #year_length lch_time
## month 1-12 (default)
scoreboard players operation $month lch_time = day cardb_data
scoreboard players operation $month lch_time -= #year_subtractor lch_time
scoreboard players operation #month_divider lch_time = #year_length lch_time
scoreboard players operation #month_divider lch_time /= #month_amount lch_time
scoreboard players operation $month lch_time /= #month_divider lch_time
scoreboard players add $month lch_time 1
## month amount / season amount (default = 12/4 = 3)
scoreboard players operation #season_divider lch_time = #month_amount lch_time
scoreboard players operation #season_divider lch_time /= #season_amount lch_time
## season 1-4 (default)
### 1 = spring -> month 1-3
### 2 = summer -> month 4-6
### 3 = autumn -> month 7-9
### 4 = winter -> month 10-12
scoreboard players operation $season lch_time = $month lch_time
scoreboard players operation $season lch_time /= #season_divider lch_time
scoreboard players add $season lch_time 1
execute if score $season lch_time > #season_amount lch_time run scoreboard players operation $season lch_time = #season_amount lch_time
##make time user-readable on scoreboard
scoreboard players add $year lch_time 1
## season functionality
execute if score $season lch_time matches 1 run function origami-games:launch/world/season/spring
execute if score $season lch_time matches 2 run function origami-games:launch/world/season/summer
execute if score $season lch_time matches 3 run function origami-games:launch/world/season/autumn
execute if score $season lch_time matches 4 run function origami-games:launch/world/season/winter
execute in the_end if score $season lch_time matches 1 run function origami-games:launch/world/season/spring
execute in the_end if score $season lch_time matches 2 run function origami-games:launch/world/season/summer
execute in the_end if score $season lch_time matches 3 run function origami-games:launch/world/season/autumn
execute in the_end if score $season lch_time matches 4 run function origami-games:launch/world/season/winter
execute in the_nether if score $season lch_time matches 1 run function origami-games:launch/world/season/spring
execute in the_nether if score $season lch_time matches 2 run function origami-games:launch/world/season/summer
execute in the_nether if score $season lch_time matches 3 run function origami-games:launch/world/season/autumn
execute in the_nether if score $season lch_time matches 4 run function origami-games:launch/world/season/winter

#world generation
## end
execute at @e[type=end_crystal,sort=random,limit=1,nbt={Dimension:1}] unless entity @e[type=area_effect_cloud,tag=lch_world_marker_end,distance=0..] run summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_world_marker_end"],CustomName:'"lch_world_marker_end"'}

execute at @e[type=area_effect_cloud,tag=lch_world_marker_end] unless entity @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,distance=0..] run summon area_effect_cloud ~ 255 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lch_entity","lch_end_exit_portal_marker"],CustomName:'"lch_end_exit_portal_marker"'}
execute as @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,tag=!lch_found_exit_portal] at @s run function origami-games:launch/world/end/exit_portal/find_y

execute at @e[type=area_effect_cloud,tag=lch_end_exit_portal_marker,tag=lch_found_exit_portal] if block ~ ~ ~ bedrock run function origami-games:launch/world/end/dragon_fight/regenerate_structures
execute store result score $ender_dragon_count lch_world_gen if entity @e[type=ender_dragon]
execute if score $ender_dragon_count lch_world_gen > $ender_dragon_count_prev lch_world_gen run function origami-games:launch/world/end/dragon_fight/regenerate_structures
scoreboard players operation $ender_dragon_count_prev lch_world_gen = $ender_dragon_count lch_world_gen

scoreboard players remove $end_chorus_speed_up lch_world_gen 1
execute if score $end_chorus_speed_up lch_world_gen matches ..0 run scoreboard players reset $end_chorus_speed_up lch_world_gen
execute unless score $end_chorus_speed_up lch_world_gen matches 0.. at @e[type=area_effect_cloud,tag=lch_world_marker_end] run gamerule randomTickSpeed 3

execute at @e[type=area_effect_cloud,tag=lch_world_marker_end] at @e[type=end_crystal,distance=0..] if entity @e[type=area_effect_cloud,tag=lch_end_crystal_marker,distance=...1] if entity @e[type=ender_dragon,distance=0..] run function origami-games:launch/world/end/crystals/fight_effects

execute as @e[type=area_effect_cloud,tag=lch_end_gateway_marker,tag=!lch_end_gateway_spawned] at @s if block ~ ~ ~ bedrock run function origami-games:launch/world/end/spawn_end_gateway
## overworld
execute as @e[type=area_effect_cloud,tag=lch_meteor_fill] at @s at @e[distance=..20,type=item,tag=!lch_entity] run function origami-games:launch/world/overworld/structure/spawn/meteor_fill
kill @e[type=armor_stand,tag=lch_mistake_spawn]

#armour stands
execute as @e[type=armor_stand] at @s run function origami-games:launch/entity/armour_stand_management

#custom blocks
## spawner drops
execute as @e[type=item,nbt={Item:{tag:{origami-games:{launch:{spawner:{}}}}}}] at @s run function origami-games:launch/block/check_spawner_item
## gravity pads
scoreboard players remove @e[type=!#origami-games:launch/block/gravity_pad/no_toggle,scores={lch_gp_cooldown=1..}] lch_gp_cooldown 1
scoreboard players reset @e[type=!#origami-games:launch/block/gravity_pad/no_toggle,scores={lch_gp_cooldown=0}] lch_gp_cooldown
## block breaker
execute as @e[type=area_effect_cloud,tag=lch_block_breaker] at @s run function origami-games:launch/block/block_breaker/processes

#custom arrows
execute as @e[type=arrow,tag=lch_explosive_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/explosive/land
execute as @e[type=arrow,tag=lch_lightning_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/lightning/land
execute as @e[type=arrow,tag=lch_torch_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/torch/land

#custom mobs
## mob spawning
execute as @e[type=!#origami-games:launch/sprite,type=!player,tag=!lch_no_check,tag=!lch_entity] at @s run function origami-games:launch/entity/spawning/check_custom
## sound
execute as @e[tag=lch_sound] at @s run function origami-games:launch/entity/sound/checks
## sand crawler
effect clear @e[tag=lch_sand_crawler] levitation
### ore spirits
execute as @e[type=item,nbt={Item:{tag:{origami-games:{launch:{function:"ore_spirit"}}}}}] at @s run function origami-games:launch/entity/ore_spirit/check_ore

#magnetism
tag @e[type=#origami-games:launch/item/magnetite/pull] add lch_holding_magnetite
tag @e[type=#origami-games:launch/item/magnetite/pull,nbt=!{HandItems:[{tag:{origami-games:{launch:{magnetite:1b}}}}]},nbt=!{SelectedItem:{tag:{origami-games:{launch:{magnetite:1b}}}}},nbt=!{Inventory:[{Slot:-106b,tag:{origami-games:{launch:{magnetite:1b}}}}]}] remove lch_holding_magnetite

execute as @e[type=item,tag=!lch_entity] at @s if entity @e[type=#origami-games:launch/item/magnetite/pull,tag=lch_holding_magnetite,distance=..6] run function origami-games:launch/item/magnetite/pull

#renewals
execute as @e[type=item,tag=lch_sprite_item] at @s if entity @e[tag=lch_sprite,tag=lch_vehicle_root,distance=..1] run data merge entity @s {Age:5850}

#removal
execute as @e[tag=lch_passenger] at @s unless entity @e[tag=lch_vehicle,distance=..1] run tag @s add lch_remove
execute as @e[tag=lch_vehicle] unless data entity @s Passengers run tag @s add lch_remove

tag @e[type=slime,tag=!lch_remove,name="entity.launch.sand_crawler",nbt=!{Size:1}] add lch_remove

execute as @e[tag=lch_remove] run data merge entity @s {Health:0,DeathTime:19,Time:0,Duration:0,Size:0}

#heads
execute as @e[type=item,tag=!lch_head,tag=!lch_entity,nbt={Item:{id:"minecraft:player_head"}}] if data entity @s Item.tag unless data entity @s Item.tag.origami-games unless data entity @s Item.tag.SkullOwner.Name at @s run function origami-games:launch/item/recover_player_head
