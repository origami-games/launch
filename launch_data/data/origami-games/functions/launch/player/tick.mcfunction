#runs on the player every tick
#@s - @a
#called by launch/tick

#light bridge rotation
execute if entity @s[scores={lch_lb_insp_drop=1..}] run function origami-games:launch/block/light_bridge/rotation/raycast

#harvesting shears
tag @s add lch_sc_mined
execute unless entity @s[scores={lch_sc_minewheat=1..}] unless entity @s[scores={lch_sc_minepotat=1..}] unless entity @s[scores={lch_sc_minecarro=1..}] unless entity @s[scores={lch_sc_minebeetr=1..}] run tag @s remove lch_sc_mined
execute if entity @s[tag=lch_sc_mined] run function origami-games:launch/item/scythe/destroyed_crop
