#called by #module/verify_dependencies

execute if score synthesisers lch_modules matches 1.. run scoreboard players set #dependencies_present lch_modules 1
execute unless score #dependencies_present lch_modules matches 1 run datapack disable "file/lch_gravity_pads"
