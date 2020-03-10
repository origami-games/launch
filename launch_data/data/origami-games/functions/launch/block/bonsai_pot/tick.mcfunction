#@s - bonsai pot
#called by launch/entity/management/armour_stand

#removal
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run function origami-games:launch/block/bonsai_pot/remove
