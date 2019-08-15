#checks mob spawning conditions
#@s - mob chosen to be custom
#called by launch/entity/spawning/check_custom

#cancel if
## spawned from spawner
execute store success score @s lch_mo_sp_spwnr run clone ~-4 ~-1 ~-4 ~4 ~1 ~4 ~-4 ~-1 ~-4 filtered spawner force
tag @s[scores={lch_mo_sp_spwnr=1..}] remove lch_replace
## in water
execute if block ~ ~ ~ water run tag @s remove lch_replace

#dimensions
execute if entity @s[tag=lch_replace,nbt={Dimension:-1}] run function origami-games:launch/entity/spawning/the_nether
execute if entity @s[tag=lch_replace,nbt={Dimension:1}] run function origami-games:launch/entity/spawning/the_end
execute if entity @s[tag=lch_replace,nbt={Dimension:0}] run function origami-games:launch/entity/spawning/overworld

#reset scores
tag @s remove lch_replace
scoreboard players reset @s lch_mo_sp_biome
