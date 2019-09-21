#called by launch/world/overworld/structure/check

#if snow, fall to ground
execute at @s if block ~ ~-1 ~ snow run tp @s ~ ~-1 ~

#spawn structure
execute if entity @s[tag=lch_structure_meteor] at @s run function origami-games:launch/world/overworld/structure/spawn/meteor
execute if entity @s[tag=lch_structure_wolf_hideout] at @s if block ~ ~ ~ snow positioned ~ ~-1 ~ unless block ~ ~ ~ #leaves run function origami-games:launch/world/overworld/structure/spawn/wolf_hideout
execute if entity @s[tag=lch_structure_desert_tomb] at @s positioned ~ ~-1 ~ if block ~ ~ ~ sand if block ~19 ~ ~19 sand if block ~-19 ~ ~-19 sand if block ~19 ~ ~-19 sand if block ~-19 ~ ~19 sand run function origami-games:launch/world/overworld/structure/spawn/desert_tomb
