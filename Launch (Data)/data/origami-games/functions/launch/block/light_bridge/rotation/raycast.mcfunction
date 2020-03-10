#raycast to find block
#@s - player inspected dropper
#called by launch/player/tick

execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^ anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^1.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^2.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^3.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^4.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle
execute unless entity @s[tag=lch_light_bridge_toggled] anchored eyes positioned ^ ^ ^5.5 anchored feet align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ dropper{Lock:"lch_light_bridge"} as @e[type=armor_stand,tag=lch_light_bridge,distance=...6] run function origami-games:launch/block/light_bridge/rotation/toggle

scoreboard players reset @s lch_lb_insp_drop
tag @s remove lch_light_bridge_toggled
