#@s - extended block breaker
#called by launch/block/block_breaker/processes

execute if block ~ ~ ~ #origami-games:launch/piston[facing=north] positioned ~ ~ ~-1 if block ~ ~ ~ moving_piston[facing=north] positioned ~ ~ ~-1 unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block
execute if block ~ ~ ~ #origami-games:launch/piston[facing=east] positioned ~1 ~ ~ if block ~ ~ ~ moving_piston[facing=east] positioned ~1 ~ ~ unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block
execute if block ~ ~ ~ #origami-games:launch/piston[facing=south] positioned ~ ~ ~1 if block ~ ~ ~ moving_piston[facing=south] positioned ~ ~ ~1 unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block
execute if block ~ ~ ~ #origami-games:launch/piston[facing=west] positioned ~-1 ~ ~ if block ~ ~ ~ moving_piston[facing=west] positioned ~-1 ~ ~ unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block

execute if block ~ ~ ~ #origami-games:launch/piston[facing=up] positioned ~ ~1 ~ if block ~ ~ ~ moving_piston[facing=up] positioned ~ ~1 ~ unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block
execute if block ~ ~ ~ #origami-games:launch/piston[facing=down] positioned ~ ~-1 ~ if block ~ ~ ~ moving_piston[facing=down] positioned ~ ~-1 ~ unless block ~ ~ ~ #origami-games:launch/block/block_breaker/illegal run function origami-games:launch/block/block_breaker/destroy_block
