#raycast to find block
#@s - player inspected dropper
#called by launch/player/tick

execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^1.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^2.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^3.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^4.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] positioned ^ ^ ^5.5 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle

scoreboard players reset @s lch_lb_insp_drop
tag @s remove lch_light_bridge_toggled
