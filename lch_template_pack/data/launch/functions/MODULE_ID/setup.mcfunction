#called by #module/setup

#version
scoreboard players set MODULE_ID lch_modules 1

#increment installed modules count
scoreboard players add $installed lch_modules 1

#initialise data
data modify storage launch:module MODULE_ID set value "MODULE_NAME"

## --> SCOREBOARD DATA <--
