#runs every tick (20/s)
#called by #cardboard:tick

#armour stands
execute as @e[type=armor_stand] at @s run function origami-games:launch/entity/armour_stand_management

#custom arrows
execute as @e[type=arrow,tag=lch_explosive_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/explosive/land
execute as @e[type=arrow,tag=lch_lightning_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/lightning/land
execute as @e[type=arrow,tag=lch_torch_arrow,nbt={inGround:1b}] at @s run function origami-games:launch/item/arrow/torch/land

#mob spawning
execute as @e[type=!#origami-games:launch/sprite,type=!player,tag=!lch_no_check,tag=!lch_entity] at @s run function origami-games:launch/entity/spawning/check_custom
