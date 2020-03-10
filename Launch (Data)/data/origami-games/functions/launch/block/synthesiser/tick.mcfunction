#@s - synthesiser
#called by launch/entity/management/armour_stand

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'} run function origami-games:launch/block/synthesiser/remove
