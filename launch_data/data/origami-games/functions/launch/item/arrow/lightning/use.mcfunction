#lightning arrow usage
#@s - newly fired lightning arrow
#called by launch/item/arrow/check_arrow

#modify entity
data merge entity @s {Tags:["lch_entity","lch_lightning_arrow"],CustomName:'{"translate":"item.launch.lightning_arrow"}',SoundEvent:"minecraft:entity.lightning_bolt.impact"}
