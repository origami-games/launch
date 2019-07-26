#checks mob spawning conditions
#@s - mob chosen to be custom
#called by launch/entity/spawning/check_custom

#dimensions
execute if entity @s[nbt={Dimension:-1}] run function origami-games:launch/entity/spawning/the_nether
execute if entity @s[nbt={Dimension:1}] run function origami-games:launch/entity/spawning/the_end
