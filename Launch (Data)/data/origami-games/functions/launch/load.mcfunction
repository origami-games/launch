#runs on load
#called by #cardboard:load

#notify load
tellraw @a [{"text":"Launch: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://origami-games.github.io/launch"}},{"text":"Loaded","color":"dark_aqua"}]

#build check
function origami-games:launch/build/check

#initialise scoreboards
scoreboard objectives add lch_general dummy

scoreboard objectives add lch_pl_y dummy
scoreboard players set $redstonic_locator_limit lch_pl_y 16

scoreboard objectives add lch_lb_insp_drop minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add lch_lb_rotation dummy
scoreboard objectives add lch_lb_status dummy
scoreboard objectives add lch_lb_statuspre dummy
scoreboard objectives add lch_lb_ray_scss dummy
scoreboard objectives add lch_lb_ray dummy
scoreboard players set $limit lch_lb_ray 31

scoreboard objectives add lch_cstar_usebow minecraft.used:minecraft.bow
scoreboard objectives add lch_cstar_usecsb minecraft.used:minecraft.crossbow
scoreboard objectives add lch_expls_ar dummy
scoreboard objectives add lch_expls_arprev dummy
scoreboard objectives add lch_light_ar dummy
scoreboard objectives add lch_light_arprev dummy
scoreboard objectives add lch_ender_ar dummy
scoreboard objectives add lch_ender_arprev dummy
scoreboard objectives add lch_torch_ar dummy
scoreboard objectives add lch_torch_arprev dummy

scoreboard objectives add lch_atas_rdstore dummy

scoreboard objectives add lch_mo_sp_random dummy
scoreboard players set #3 lch_mo_sp_random 3
scoreboard players set #-1 lch_mo_sp_random -1

scoreboard objectives add lch_slot_size dummy
scoreboard objectives add lch_slot_count dummy

#start clock
function origami-games:launch/clock16
