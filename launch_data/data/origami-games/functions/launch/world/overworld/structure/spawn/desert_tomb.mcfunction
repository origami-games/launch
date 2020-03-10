#called by launch/world/overworld/structure/spawn

setblock ~-19 ~ ~-19 structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/desert_tomb"} replace
setblock ~-19 ~1 ~-19 redstone_block replace

#notify
function origami-games:launch/world/overworld/structure/spawn/notification

#kill lch_structure
kill @s[type=!player]
