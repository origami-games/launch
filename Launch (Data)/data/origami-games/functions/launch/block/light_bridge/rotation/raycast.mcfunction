#raycast to find block
#@s - player inspected dropper
#called by launch/player/tick

execute positioned ^ ^ ^.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle
execute positioned ^ ^ ^1.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle
execute positioned ^ ^ ^2.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle
execute positioned ^ ^ ^3.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle
execute positioned ^ ^ ^4.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle
execute positioned ^ ^ ^5.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=..1] run function origami-games:launch/block/light_bridge/rotation/toggle

scoreboard players reset @s lch_lb_insp_drop
