#explosive arrow usage
#@s - newly fired explosive arrow
#called by launch/item/arrow/check_arrow

#modify entity
data merge entity @s {Tags:["lch_entity","lch_explosive_arrow"],CustomName:'{"translate":"item.launch.explosive_arrow"}',SoundEvent:"minecraft:entity.generic.explode"}
