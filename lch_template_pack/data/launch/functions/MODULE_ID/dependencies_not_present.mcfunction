#called by MODULE_ID/verify_dependencies

scoreboard players set MODULE_ID lch_modules -1
scoreboard players add #dependency_issues lch_modules 1

data modify storage launch:module dependency_issues append from storage launch:module MODULE_ID
data modify storage launch:module dependency_issues append from storage launch:module list_split
