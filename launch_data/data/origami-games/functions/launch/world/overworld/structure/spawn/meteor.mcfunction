#called by launch/world/overworld/structure/spawn

#summon explosions
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}
summon tnt ~ ~ ~ {Tags:["lch_meteor"],Fuse:1}

spreadplayers ~ ~ 0 6 false @e[type=tnt,tag=lch_meteor,distance=0]
execute at @e[type=tnt,tag=lch_meteor] run summon area_effect_cloud ~ ~ ~ {Tags:["lch_meteor_fill"],Duration:2}

#notify
function origami-games:launch/world/overworld/structure/spawn/notification

#kill lch_structure
kill @s[type=!player]
