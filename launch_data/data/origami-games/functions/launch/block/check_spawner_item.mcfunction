#checks spawner-dropped items
#@s - @e[type=item,nbt={Item:{tag:{origami-games:{launch:{spawner:{}}}}}}]
#called by launch/tick

#titanium plating
execute if predicate origami-games:launch/block/spawner/block/titanium_plating run loot spawn ~ ~ ~ loot origami-games:launch/blocks/titanium_plating
#magnetite ore
execute if predicate origami-games:launch/block/spawner/block/magnetite_ore run function origami-games:launch/block/magnetite_ore/drop_check

#kill entities
kill @s[type=!player]

#kill orbs if necessary
execute if predicate origami-games:launch/block/spawner/kill_orbs align xyz run kill @e[type=experience_orb,dx=0,dy=0,dz=0]
