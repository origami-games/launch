#called by launch/entity/ore_spirit/check_ore

summon vex ~ ~ ~ {HandItems:[{id:iron_pickaxe,Count:1},{}],HandDropChances:[-1.0F,-1.0F],ArmorDropChances:[-1.0F,-1.0F,-1.0F,1.0F],ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b,Amplifier:0}],DeathLootTable:"origami-games:launch/entities/ore_spirit",CustomName:'{"translate":"entity.launch.ore_spirit"}',Tags:["lch_entity","lch_ore_spirit"],Attributes:[{Name:"generic.maxHealth",Base:4},{Name:"generic.attackDamage",Base:1}],Health:4}

function origami-games:launch/entity/spawning/remove_previous_entity
