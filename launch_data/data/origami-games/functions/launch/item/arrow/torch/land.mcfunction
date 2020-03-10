#torch arrow landing
#@s - landed torch arrow
#called by launch/tick

kill @s[type=!player]
execute if block ~ ~ ~ #origami-games:launch/air run loot spawn ~ ~ ~ loot minecraft:items/arrow
execute unless block ~ ~ ~ #origami-games:launch/air run loot spawn ~ ~ ~ loot origami-games:launch/items/torch_arrow
setblock ~ ~ ~ torch keep
execute unless block ~ ~ ~1 #origami-games:launch/item/arrow/torch/wall_no_place run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=north] replace #origami-games:launch/torch
execute unless block ~-1 ~ ~ #origami-games:launch/item/arrow/torch/wall_no_place run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=east] replace #origami-games:launch/torch
execute unless block ~ ~ ~-1 #origami-games:launch/item/arrow/torch/wall_no_place run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=south] replace #origami-games:launch/torch
execute unless block ~1 ~ ~ #origami-games:launch/item/arrow/torch/wall_no_place run fill ~ ~ ~ ~ ~ ~ wall_torch[facing=west] replace #origami-games:launch/torch
execute unless block ~ ~-1 ~ #origami-games:launch/item/arrow/torch/wall_no_place run fill ~ ~ ~ ~ ~ ~ torch replace #origami-games:launch/torch
