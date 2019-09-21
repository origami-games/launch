#@s - gravity pad
#called by launch/tick

#enable/disable
execute if block ~ ~ ~ dropper[triggered=true] positioned ~ ~1 ~ align xyz as @e[type=!#origami-games:launch/block/gravity_pad/no_toggle,dx=0,dy=0,dz=0] unless entity @s[scores={lch_gp_cooldown=1..}] at @s run function origami-games:launch/block/gravity_pad/toggle_gravity

#removal
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.gravity_pad"}'} run function origami-games:launch/block/gravity_pad/remove
