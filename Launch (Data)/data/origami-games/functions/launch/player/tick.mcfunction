#runs on the player every tick
#@s - @a
#called by #cardboard:player/tick from cardboard:tick

#all recipes
recipe give @s *

#light bridge rotation
execute if entity @s[scores={lch_lb_insp_drop=1..}] anchored eyes positioned ^ ^ ^ anchored feet run function origami-games:launch/block/light_bridge/rotation/raycast

#custom arrows
# tag @s[tag=!lch_csb_explosive_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"explosive"}}}}]}}}] add lch_csb_explosive_arrow
# tag @s[tag=!lch_csb_lightning_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"lightning"}}}}]}}}] add lch_csb_lightning_arrow
# tag @s[tag=!lch_csb_ender_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"ender"}}}}]}}}] add lch_csb_ender_arrow
# tag @s[tag=!lch_csb_torch_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"torch"}}}}]}}}] add lch_csb_torch_arrow
# execute if entity @s[scores={lch_custo_arprev=1..}] run function origami-games:launch/item/arrow/get_counts
# execute store result score @s lch_custo_arprev run clear @s arrow{origami-games:{launch:{item:"custom_arrow"}}} 0
# scoreboard players reset @s lch_cstar_usebow
# scoreboard players reset @s lch_cstar_usecsb
# tag @s[tag=lch_csb_explosive_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"explosive"}}}}]}}}] remove lch_csb_explosive_arrow
# tag @s[tag=lch_csb_lightning_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"lightning"}}}}]}}}] remove lch_csb_lightning_arrow
# tag @s[tag=lch_csb_ender_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"ender"}}}}]}}}] remove lch_csb_ender_arrow
# tag @s[tag=lch_csb_torch_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"torch"}}}}]}}}] remove lch_csb_torch_arrow
