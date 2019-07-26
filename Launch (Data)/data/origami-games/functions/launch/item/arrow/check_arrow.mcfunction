#check custom arrow used
#@s - player used cross/bow with custom arrow in inv
#called by launch/item/arrow/get_counts

#bow
execute unless score @s lch_expls_ar = @s lch_expls_arprev positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/explosive/use
execute unless score @s lch_light_ar = @s lch_light_arprev positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/lightning/use
execute unless score @s lch_ender_ar = @s lch_ender_arprev positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/ender/use
execute unless score @s lch_torch_ar = @s lch_torch_arprev positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/torch/use

#crossbow
execute if entity @s[tag=lch_csb_explosive_arrow] positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/explosive/use
execute if entity @s[tag=lch_csb_lightning_arrow] positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/lightning/use
execute if entity @s[tag=lch_csb_ender_arrow] positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/ender/use
execute if entity @s[tag=lch_csb_torch_arrow] positioned ~ ~1 ~ as @e[type=arrow,sort=nearest,limit=1] run function origami-games:launch/item/arrow/torch/use
