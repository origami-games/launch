#item crushing
#@s - item if block ~ ~-1 ~ #anvil if block ~ ~ ~ moving_piston >>>align xyz<<<
#called by launch/entity/management/item

#tags
tag @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] add lch_pickaxe
tag @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] add lch_pickaxe
tag @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] add lch_pickaxe
tag @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] add lch_pickaxe
tag @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] add lch_pickaxe

#industrial grade diamond
execute if entity @s[nbt={Item:{id:"minecraft:diamond"}}] run function origami-games:launch/item/industrial_grade_diamond/craft
#spirit orbs
execute if entity @s[tag=lch_pickaxe,nbt=!{Item:{tag:{origami-games:{launch:{infused:{spirit_orb:1b}}}}}}] if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{Count:1b,tag:{origami-games:{launch:{item:"spirit_orb"}}}}}] run function origami-games:launch/item/spirit_orb/infuse
