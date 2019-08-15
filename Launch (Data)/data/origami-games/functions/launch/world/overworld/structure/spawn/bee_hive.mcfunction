#called by launch/world/overworld/structure/spawn

setblock ~ ~ ~ structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"origami-games:launch/world/bee_hive"} replace
setblock ~ ~1 ~ redstone_block replace

#notify
function origami-games:launch/world/overworld/structure/spawn/notification

#kill lch_structure
kill @s[type=!player]
