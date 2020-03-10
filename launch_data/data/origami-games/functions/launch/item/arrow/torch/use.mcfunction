#torch arrow usage
#@s - newly fired torch arrow
#called by launch/item/arrow/check_arrow

#modify entity
data merge entity @s {Tags:["lch_entity","lch_torch_arrow"],CustomName:'{"translate":"item.launch.torch_arrow"}',SoundEvent:"minecraft:block.stone.place",Fire:2000s}
