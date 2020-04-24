#called by #module/setup

#version
scoreboard players set gravity_pads lch_modules 1

#increment installed modules count
scoreboard players add $installed lch_modules 1

#initialise data
data modify storage launch:module gravity_pads set value "Gravity Pads"

## --> SCOREBOARD DATA <--
