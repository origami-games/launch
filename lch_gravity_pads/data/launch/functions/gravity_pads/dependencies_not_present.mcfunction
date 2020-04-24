#called by gravity_pads/verify_dependencies

scoreboard players set gravity_pads lch_modules -1
scoreboard players add #dependency_issues lch_modules 1

data modify storage launch:module dependency_issues append from storage launch:module gravity_pads
data modify storage launch:module dependency_issues append from storage launch:module list_split
