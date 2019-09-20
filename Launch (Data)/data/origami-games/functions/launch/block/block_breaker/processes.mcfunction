#@s - block breaker
#called by launch/tick

#activation
execute if block ~ ~ ~ #origami-games:launch/piston[extended=true] run function origami-games:launch/block/block_breaker/check_destroy

#removal
execute unless block ~ ~ ~ #origami-games:launch/piston unless block ~ ~ ~ moving_piston run function origami-games:launch/block/block_breaker/remove
