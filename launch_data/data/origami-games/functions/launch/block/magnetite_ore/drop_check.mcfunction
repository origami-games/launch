#called by block/check_spawner_item

execute if predicate origami-games:launch/block/spawner/tool/enchantment/silk_touch run loot spawn ~ ~ ~ loot origami-games:launch/items/magnetite_ore
execute unless predicate origami-games:launch/block/spawner/tool/enchantment/silk_touch run loot spawn ~ ~ ~ loot origami-games:launch/blocks/magnetite_ore
