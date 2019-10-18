#modify end gateway after game spawns one
#@s - @e[type=area_effect_cloud,tag=lch_end_gateway_marker,tag=!lch_end_gateway_spawned] if block ~ ~ ~ bedrock
#called by launch/tick

#audiovisuals
particle totem_of_undying ~ ~ ~ 2 2 2 .5 400 force @a
playsound block.end_portal.spawn block @a ~ ~ ~ 100 2 1
playsound block.end_portal.spawn block @a ~ ~ ~ 100 1 1
playsound block.end_portal.spawn block @a ~ ~ ~ 100 0 1
execute at @e[type=shulker] run summon firework_rocket ~ ~ ~ {LifeTime:40}

#fangs and vexes
summon evoker_fangs ~3 ~-2.5 ~
summon evoker_fangs ~-3 ~-2.5 ~
summon evoker_fangs ~ ~-2.5 ~3
summon evoker_fangs ~ ~-2.5 ~-3

#double-up gateway
clone ~ 75 ~ ~ 75 ~ ~ 74 ~

#spawn tower
fill ~-2 ~-5 ~3 ~2 0 ~-3 obsidian
fill ~-3 ~-5 ~-2 ~-3 0 ~2 obsidian
fill ~3 ~-5 ~-2 ~3 0 ~2 obsidian

#spawn crown
fill ~-1 ~ ~-1 ~1 ~-3 ~1 air replace bedrock
setblock ~-3 ~-4 ~-3 structure_block[mode=load]{mode:"LOAD",posY:0,name:"origami-games:launch/world/end_gateway_crown"}
setblock ~-3 ~-3 ~-3 redstone_block
fill ~-3 ~-4 ~-3 ~-3 ~-3 ~-3 air

#prevent further modification
tag @s add lch_end_gateway_spawned
