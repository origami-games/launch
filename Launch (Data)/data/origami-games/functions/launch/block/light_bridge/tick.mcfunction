#@s - light bridge
#called by launch/entity/management/armour_stand

#enable/disable
execute if block ~ ~ ~ dropper[triggered=false] run scoreboard players set @s lch_lb_status 0
execute if block ~ ~ ~ dropper[triggered=true] run scoreboard players set @s lch_lb_status 1
execute unless score @s lch_lb_status = @s lch_lb_statuspre if entity @s[scores={lch_lb_status=0}] run function origami-games:launch/block/light_bridge/light/remove
scoreboard players operation @s lch_lb_statuspre = @s lch_lb_status

#removal
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.light_bridge"}'} run function origami-games:launch/block/light_bridge/remove

#functionality
execute unless entity @s[scores={lch_lb_status=0}] if block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.light_bridge"}'} run function origami-games:launch/block/light_bridge/light/raycast
scoreboard players add @s lch_lb_rotation 0
