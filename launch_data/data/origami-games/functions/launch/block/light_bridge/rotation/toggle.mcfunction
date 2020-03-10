#toggles light bridge rotation
#@s - light bridge found by raycast
#called by launch/block/light_bridge/rotation/raycast

scoreboard players add @s lch_lb_rotation 1
scoreboard players set @s[scores={lch_lb_rotation=6..}] lch_lb_rotation 0

function origami-games:launch/block/light_bridge/light/remove

execute if entity @s[scores={lch_lb_rotation=0}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=up,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=1}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=down,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=2}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=north,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=3}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=east,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=4}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=south,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=5}] if block ~ ~ ~ dropper[triggered=false] run setblock ~ ~ ~ dropper[facing=west,triggered=false]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}

execute if entity @s[scores={lch_lb_rotation=0}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=up,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=1}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=down,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=2}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=north,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=3}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=east,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=4}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=south,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}
execute if entity @s[scores={lch_lb_rotation=5}] if block ~ ~ ~ dropper[triggered=true] run setblock ~ ~ ~ dropper[facing=west,triggered=true]{CustomName:'{"translate":"block.launch.light_bridge"}',Lock:"lch_light_bridge"}

execute if entity @s[scores={lch_lb_rotation=0}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.up","color":"dark_aqua"}]
execute if entity @s[scores={lch_lb_rotation=1}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.down","color":"dark_aqua"}]
execute if entity @s[scores={lch_lb_rotation=2}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.north","color":"dark_aqua"}]
execute if entity @s[scores={lch_lb_rotation=3}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.east","color":"dark_aqua"}]
execute if entity @s[scores={lch_lb_rotation=4}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.south","color":"dark_aqua"}]
execute if entity @s[scores={lch_lb_rotation=5}] run title @p[scores={lch_lb_insp_drop=1..}] actionbar [{"translate":"block.launch.light_bridge","color":"aqua"},": ",{"translate":"text.launch.west","color":"dark_aqua"}]

tag @p[scores={lch_lb_insp_drop=1..}] add lch_light_bridge_toggled
