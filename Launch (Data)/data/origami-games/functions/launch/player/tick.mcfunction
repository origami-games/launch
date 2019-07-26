#runs on the player every tick
#@s - @a
#called by #cardboard:player/tick from cardboard:tick

#give all recipes
recipe give @s *

#store pos
execute store result score @s lch_pl_y run data get entity @s Pos[1]

#custom block middle click
replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:dropper",tag:{BlockEntityTag:{CustomName:'{"translate":"block.launch.synthesiser"}'}}}}] weapon bat_spawn_egg{EntityTag:{id:armor_stand,Tags:["lch_summon_synthesiser"],Invisible:1,Small:1,Marker:1,Invulnerable:1,CustomName:'"lch_summon_synthesiser"'},display:{Name:'{"translate":"block.launch.synthesiser","italic":false}'},CustomModelData:1}
replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:dropper",tag:{BlockEntityTag:{CustomName:'{"translate":"block.launch.light_bridge"}'}}}}] weapon bat_spawn_egg{EntityTag:{id:armor_stand,Tags:["lch_summon_light_bridge"],Invisible:1,Small:1,Marker:1,Invulnerable:1,CustomName:'"lch_summon_light_bridge"'},display:{Name:'{"translate":"block.launch.light_bridge","italic":false,"color":"aqua"}'},CustomModelData:2}

#light bridge rotation
execute if entity @s[scores={lch_lb_insp_drop=1..}] anchored eyes positioned ^ ^ ^ anchored feet run function origami-games:launch/block/light_bridge/rotation/raycast

#custom arrows
tag @s[tag=!lch_csb_explosive_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"explosive"}}}}]}}}] add lch_csb_explosive_arrow
tag @s[tag=!lch_csb_lightning_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"lightning"}}}}]}}}] add lch_csb_lightning_arrow
tag @s[tag=!lch_csb_ender_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"ender"}}}}]}}}] add lch_csb_ender_arrow
tag @s[tag=!lch_csb_torch_arrow,nbt={SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"torch"}}}}]}}}] add lch_csb_torch_arrow
execute if entity @s[nbt={Inventory:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]}] run function origami-games:launch/item/arrow/get_counts
scoreboard players reset @s lch_cstar_usebow
scoreboard players reset @s lch_cstar_usecsb
tag @s[tag=lch_csb_explosive_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"explosive"}}}}]}}}] remove lch_csb_explosive_arrow
tag @s[tag=lch_csb_lightning_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"lightning"}}}}]}}}] remove lch_csb_lightning_arrow
tag @s[tag=lch_csb_ender_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"ender"}}}}]}}}] remove lch_csb_ender_arrow
tag @s[tag=lch_csb_torch_arrow,nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{origami-games:{launch:{arrow:"torch"}}}}]}}}] remove lch_csb_torch_arrow
