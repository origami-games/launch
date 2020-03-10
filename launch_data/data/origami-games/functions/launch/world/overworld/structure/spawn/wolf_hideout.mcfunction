#called by launch/world/overworld/structure/spawn

#structures
## main
setblock ~ ~ ~ structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/main_path"} replace
setblock ~ ~1 ~ redstone_block replace
## tower
execute positioned ~6 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~ ~ structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/tower"} replace
execute positioned ~6 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~1 ~ redstone_block replace
execute positioned ~6 ~ ~3 if block ~ 1 ~ bedrock run fill ~ ~ ~ ~ ~1 ~ air replace
## graveyard
execute positioned ~20 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~ ~ structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/graveyard"} replace
execute positioned ~20 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~1 ~ redstone_block replace
execute positioned ~20 ~ ~3 if block ~ 1 ~ bedrock run fill ~ ~ ~ ~ ~1 ~ air replace
## anvil
execute positioned ~17 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~ ~-11 structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/anvil"} replace
execute positioned ~17 ~ ~3 if block ~ 1 ~ bedrock run setblock ~ ~1 ~-11 redstone_block replace
execute positioned ~17 ~ ~3 if block ~ 1 ~ bedrock run fill ~ ~ ~-11 ~ ~1 ~-11 air replace
## monument
execute positioned ~ ~ ~-1 if block ~ 1 ~ bedrock run setblock ~ ~ ~13 structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/monument",mirror:"FRONT_BACK",rotation:"CLOCKWISE_180"} replace
execute positioned ~ ~ ~-1 if block ~ 1 ~ bedrock run setblock ~ ~1 ~13 redstone_block replace
execute positioned ~ ~ ~-1 if block ~ 1 ~ bedrock run fill ~ ~ ~13 ~ ~1 ~13 air replace
## path branch
execute positioned ~-2 ~ ~-1 if block ~ 1 ~ bedrock run setblock ~ ~ ~ structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/wolf_hideout/path_branch",mirror:"FRONT_BACK",rotation:"CLOCKWISE_180"} replace
execute positioned ~-2 ~ ~-1 if block ~ 1 ~ bedrock run setblock ~ ~1 ~ redstone_block replace
execute positioned ~-2 ~ ~-1 if block ~ 1 ~ bedrock run fill ~ ~ ~ ~ ~1 ~13 air replace

#notify
function origami-games:launch/world/overworld/structure/spawn/notification

#kill lch_structure
kill @s[type=!player]
