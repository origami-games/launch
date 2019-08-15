#fills metor magma/ores
#@s - @e[type=area_effect_cloud,tag=lch_meteor_fill]
#called by launch/tick

#magma
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 magma_block replace #origami-games:launch/world/structure/meteor/can_replace_magma
#obsidian
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 obsidian replace #origami-games:launch/world/structure/meteor/can_replace_obsidian
#magnetite ore
execute store result score $meteor_ore lch_world_gen run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 spawner{SpawnData:{id:armor_stand,Tags:["lch_entity","lch_mistake_spawn"],ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{origami-games:{launch:{block:"magnetite_ore"}},CustomModelData:4}}]},RequiredPlayerRange:0} replace #origami-games:launch/world/structure/meteor/can_replace_ore
execute if score $meteor_ore lch_world_gen matches 1.. run function origami-games:launch/world/overworld/structure/spawn/meteor_fill_ore
#water to lava
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 lava replace water
#remove snow
execute positioned ~ ~2.5 ~ run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace snow

#kill entities
kill @e[distance=..20,type=item,tag=!lch_entity]
kill @s[type=!player]
