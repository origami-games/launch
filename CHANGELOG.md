# Changelog

## [v0.2.0](https://gitlab.com/origami-games/launch/tree/v0.2.0)
```diff
+ Slime Fertiliser speeds up Bonsai Pot processes
+ Recipe for Slime Fertiliser
    - Slime Ball and Bone Meal in Synthesiser
+ Verdant Crystals
    - Actively spawns below Y=20
    - Requires Silk Touch to get the Verdant Crystal item when broken
    **************************************** ADD MORE DESCRIPTION NUB ****************************************
+ Scythe
    - When used while destroying crops, a 3x3 area of crops are broken
+ Owl
    - Spawns in forest biomes
    - Drops Feathers and Cod
* Performance improvements
* Made minimum amount of dirt for Bonsai Pot activation `16`
* Renamed pack folders from `Launch (<Data Type>)` to `launch_<datatype>`
* Renamed all `processes` functions to `tick`
* Fixed certain entities being constantly checked for custom mob spawning
* Fixed non silk-touchable ores still spawning Ore Spirits even with Silk Touch
* Fixed Desert Tomb spawning
* Fixed Tridents and Fishing Bobbers having a chance of spawning mobs when thrown
* Fixed Tridents being able to get through End Crystals' forcefield
* Fixed mobs converted to custom mobs not being removed
* Moved all block functions, apart from block removal, to the clock instead of the tick; basically, they run slower now
* Made server version check armour stand silent
```

---

## [v0.1.1](https://gitlab.com/origami-games/launch/tree/v0.1.1)
```diff
+ Added a particle effect to End Crystals' projectile deflection
* Made all projectiles be deflected by End Crystals
* Made projectiles bounce off of End Crystals, rather than just being stopped
* Fixed filled Bonsai Pots spawning loot at 3x normal speed rather than 2x
```

## [v0.1.0](https://gitlab.com/origami-games/launch/tree/v0.1.0)
```diff
* Performance improvements
* Fixed a Purpur Pillar spawning at world spawn upon each dragon fight
* Fixed Cooked Wolf Chop translation
* Fixed Ore Spirit spawn rates from certain ores
* Fixed Lapis Ores spawning Gold Ore Spirits
* Fixed loot table `origami-games:launch/world/structure/desert_tomb/barrel` throwing parameter not provided errors on load
+ Bonsai Pot
    - Spawns tree-based loot into any container below the Bonsai Pot when there is a Grass Block and a Sapling above it and when it has dirt in the first slot
    - Crafted in Synthesiser with *Bone Blocks* and a *Flower Pot*
        - `B_B`
        - `BFB`
        - `_B_`
+ Industrial Grade Diamonds are now obtainable
    - Drop a Diamond on to an anvil and push a piston head down on to it
+ When near caged End Crystals, survival mode users will be affected with Mining Fatigue
+ Arrows shot at End Crystals will now be deflected* Block Breakers now require Industrial Grade Diamond in their recipe instead of Diamond
+ When near caged End Crystals, survival mode users will be affected with Mining Fatigue
+ Arrows shot at End Crystals will now be deflected
* Reduced Sand Crawlers' upwards throwing motion
* Reduced the chance of a Spirit Orb dropping from an Ore Spirit
* Made Ore Spirits not spawn with Silk Touch
* Made ore drops from Ore Spirits drop with a count emulating Fortune III
* Made Shulkers spawn in the main End island now instead of Chorus
* Reworked the mob spawning system to use loot table weights
* Reduced month size to 4 in-game days
- Removed custom block middle-clicking
- Removed removal of `PickupDelay` from items being pulled by Magnetite
- Temporarily disabled custom arrows - optimising
```

---

## [v0.0.3](https://gitlab.com/origami-games/launch/tree/v0.0.3)
```diff
+ Block Breakers
    - Created by dropping a Block Breaker item on to a piston
    - When powered by redstone, breaks the block the face of the piston head touches
    - Crafted in Synthesiser with Diamonds and Sticks like a pickaxe, Iron Ingots and Pistons
        - `DDD`
        - `ISI`
        - `PSP`
+ Disenchanter
    - Can be placed like normal blocks
    - Removes enchantments from items when the enchanted item is placed in the first slot of the Disenchanter and a normal book is placed in the last slot
        - Returns an enchanted book, removes the enchantment from the item and gives a bit of XP
    - Crafted in Synthesiser with Smooth Stone, Obsidian, an Enchanting Table and a Book and Quill
        - `SBS`
        - `SES`
        - `SOS`
+ Ore Spirits
    - Spawn when breaking ore blocks
    - Attack you through blocks
    - Drop their respective ore block and a Spirit Orb (see below)
+ Spirit Orb
    - Drops from Ore Spirits
+ Particle to Magnetite's pull
+ Removal of `PickupDelay` from items being pulled by Magnetite
* Fixed custom ores dropping experience when silk-touched
* Fixed custom ores not dropping anything when not broken by a player
* Fixed some custom block crafts referring to its block loot table, not its item loot table
* Fixed custom bloc recipes being able to stack over 16
* Changed world gen to check for bedrock instead of barriers
* Made `recipe_validity_check` available for global use
- Bees (added in 19w34a)
```

## [v0.0.2](https://gitlab.com/origami-games/launch/tree/v0.0.2)
```diff
+ Verdant tools (texture only, to be implemented)
+ Magnetite tools
    - Crafted in Synthesiser in the same formation as other tools with Magnetite Lumps
    - Has magnetic properties - items nearby move towards you when held in the mainhand, offhand or on an armour stand
+ Added a load of custom item models/textures (Clock's `CustomModelData` 11-20)
+ Log/Wood to Stripped Log/Wood in the Stonecutter
+ Looking Glass
    - Crafted in Synthesiser with Gold Nuggets in a doughnut shape with Glass in the centre
    - Zooms in the camera when in the offhand
+ Titanium Plating (no recipe yet)
* Retextured the Redstonic Locator
+ Added a few advancements
    - Beep Boop. Boop Beep. - Craft a Redstonic Locator with Quartz, Glass, Green Concrete and Redstone
    - Primeval Synthesis - Craft a Synthesiser with a redstonic locator, crafting table, iron block and piston
+ World generation
    - Overworld
    - Added Wolf Hideouts
        - Spawn in snowy biomes
        - Includes the Wolf Rider mob
    - Added Desert Tombs
        - Spawn rarely in deserts
        - A pyramid structure with loot and a husk spawner
    - Added Meteors
        - Include Magnetite Ore, dropping Magnetite Lumps; can be silk-touched
    - Added Bee Hives
        - Currently a placeholder - will be replaced with a flatter hive along with hives for other mobs
    - The End
        - The Exit Portal is converted to obsidian and has a Purpur Pillar under the dragon egg
        - End Crystal Towers have a new crowning which regens at each fight, marked with an AEC at the start of the initial fight
        - Chorus trees are generated upon first generation
+ Custom mob spawning system
    - Added Bee
        - Spawn in Bee Hives
    - Added Fire Ant
        - Spawn near lava in the Nether
    - Added Slime Queen
        - Spawns rarely in swamps
    - Added Treemanoid
        - Spawns rarely in snowy biomes
    - Added Wolf Rider
        - Spawns globally at night (between `daytime` ticks `12000..23000`)
    - Added Sand Crawler
        - Spawns in the desert at night (same rate as husks)
    - Added Wood Sprite
        - Spawns in wooded areas at night (same rate as skeletons)
+ Months and seasons
    - Changes various game aspects in each season respectively
+ Nether Quartz now drops from Nether Quartz Ore at the same rate as Redstone from Redstone Ore
- Removed item give commands in functions (`origami-games:launch/item/<item_id>/give`) - use `loot give` now
* Changed Torch Arrow recipe
    - Now shapeless requiring 1 Arrow and 1 Torch
* Fixed #1 :: Custom blocks spawn higher than they should if placed on a non-full block
* Fixed #2 :: Custom arrows don't work if they're the last of their stack
* Fixed Torch Arrows on east/west faces spawning Torches on the inverse face
* Updated custom block model methods
* Converted all custom items without functionality to Clocks
* Converted custom item drop types in loot tables from `item` to `loot_table`, now referring to custom items in `launch/loot_tables/items`
* Custom crafting recipes now refer to custom item loot tables
* Made custom blocks Armour Stands (as Spawn Eggs can be placed in Spawners)
* Fixed Silverfish loot table
* Fixed Redstonic Locator (formerly Atom Assembler) model
* Fixed links in build checks
```

-----

## [v0.0.1](https://gitlab.com/origami-games/launch/tree/v0.0.1)
```diff
+ End Stone Fragments
    - Drops from End Stone
    - No functionality yet
+ Dark Flesh
    - Drop from Endermen
    - Acts like Chorus Fruit, but gives effects of Rotten Flesh
+ Shulkers drop 2 Shulker Shells always
+ Silverfish drop Iron Nuggets, and have a chance to drop Iron Ingots with Looting
+ Stone Pickaxes can be crafted with all types of stone
+ Universal dyeing
+ Redstonic Locator
    - Floor crafted with 1 Green Concrete, 1 Glass, 1 Quartz and 1 Redstone
    - Detects Redstone in a 5x5x5 cube around you when in the overworld at Y<20
+ Synthesiser
    - Floor crafted with 1 Redstonic Locator, 1 Piston, 1 Redstone Block, 1 Iron Block and 1 Crafting Table
    - Launch's custom crafter
+ Light Bridge
    - Crafted in Synthesiser with Iron Blocks, Purpur Blocks, Sea Lanterns and Light Blue Stained Glass
        - `ILI`
        - `PGP`
        - `ILI`
    - Emits a bridge of light (can be walked on) when powered by Redstone
    - Rotation can be changed by clicking the block
+ Armour stand arms
+ Custom arrows
    - Crafted in Synthesiser with arrows in a doughnut shape with their respective materials in the centre:
        - Explosive Arrow - Gunpowder
        - Ender Arrow - Ender Pearl/Ender Rod
        - Lightning Arrow - Lightning Rod
    - Torch Arrow - Torch
+ Electrified Energy Bars
    - Crafted in Synthesiser with an Iron Bar and a Redstone Torch, shapeless
    - No functionality apart from being a material in recipes
+ Lightning Rod
    - Crafted in Synthesiser with Electrified Energy Bars in a doughnut shape with Blaze Powder in the centre
    - When dropped summons a lightning strike after 3 clock ticks - does not work if stacked
+ Ender Rod
    - Crafted in Synthesiser with Lightning Rods in a doughnut shape with an Ender Pearl in the centre
    - When dropped acts like a Lightning Rod, but teleports entities in a 5-block radius to the rod before the strike
+ An incomplete custom mob spawning system
```

-----
