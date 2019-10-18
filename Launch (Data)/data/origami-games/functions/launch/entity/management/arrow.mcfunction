#arrow management
#@s - arrow stand
#called by launch/tick

#custom arrows
execute if entity @s[tag=lch_explosive_arrow,nbt={inGround:1b}] run function origami-games:launch/item/arrow/explosive/land
execute if entity @s[tag=lch_lightning_arrow,nbt={inGround:1b}] run function origami-games:launch/item/arrow/lightning/land
execute if entity @s[tag=lch_torch_arrow,nbt={inGround:1b}] run function origami-games:launch/item/arrow/torch/land
