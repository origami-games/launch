#@s - disenchanter
#called by launch/entity/management/armour_stand

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} run function origami-games:launch/block/disenchanter/remove
