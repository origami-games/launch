#called by launch/item/scythe/destroy_crop

execute positioned ~1 ~ ~1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ #origami-games:launch/item/scythe/crop[age=7] run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~-1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air destroy
tag @s add lch_sc_casted
