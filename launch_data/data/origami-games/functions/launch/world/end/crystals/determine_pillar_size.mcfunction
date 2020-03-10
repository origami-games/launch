#determines end pillar size
#@s - end crystal aec markers
#called by launch/world/end/crystals/summon_markers

execute if block ~2 ~ ~ iron_bars run tag @s add lch_end_pillar_caged
execute if block ~-1 ~-2 ~ obsidian run scoreboard players add @s lch_end_pllr_sze 1
execute if block ~-2 ~-2 ~ obsidian run scoreboard players add @s lch_end_pllr_sze 1
execute if block ~-3 ~-2 ~ obsidian run scoreboard players add @s lch_end_pllr_sze 1
execute if block ~-4 ~-2 ~ obsidian run scoreboard players add @s lch_end_pllr_sze 1

tag @s[scores={lch_end_pllr_sze=1}] add lch_end_pillar_tiny
tag @s[scores={lch_end_pllr_sze=2}] add lch_end_pillar_small
tag @s[scores={lch_end_pllr_sze=3}] add lch_end_pillar_medium
tag @s[scores={lch_end_pllr_sze=4}] add lch_end_pillar_large

scoreboard players reset @s lch_end_pllr_sze

execute if entity @s[tag=lch_end_pillar_tiny] run setblock ~-1 ~-2 ~-1 structure_block[mode=load]{mode:"LOAD",posY:0,name:"origami-games:launch/world/end_crystal_crown/tiny"}
execute if entity @s[tag=lch_end_pillar_tiny] run setblock ~-1 ~-1 ~-1 redstone_block
execute if entity @s[tag=lch_end_pillar_small] run setblock ~-2 ~-2 ~-2 structure_block[mode=load]{mode:"LOAD",posY:0,name:"origami-games:launch/world/end_crystal_crown/small"}
execute if entity @s[tag=lch_end_pillar_small] run setblock ~-2 ~-1 ~-2 redstone_block
execute if entity @s[tag=lch_end_pillar_medium] run setblock ~-3 ~-2 ~-3 structure_block[mode=load]{mode:"LOAD",posY:0,name:"origami-games:launch/world/end_crystal_crown/medium"}
execute if entity @s[tag=lch_end_pillar_medium] run setblock ~-3 ~-1 ~-3 redstone_block
execute if entity @s[tag=lch_end_pillar_large] run setblock ~-4 ~-2 ~-4 structure_block[mode=load]{mode:"LOAD",posY:0,name:"origami-games:launch/world/end_crystal_crown/large"}
execute if entity @s[tag=lch_end_pillar_large] run setblock ~-4 ~-1 ~-4 redstone_block
fill ~-1 ~-1 ~-1 ~-4 ~-2 ~-4 air replace redstone_block
fill ~-1 ~-1 ~-1 ~-4 ~-2 ~-4 air replace structure_block
