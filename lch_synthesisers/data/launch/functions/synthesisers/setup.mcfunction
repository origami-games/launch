#called by #module/setup

#version
scoreboard players set synthesisers lch_modules 1

#increment installed modules count
scoreboard players add $installed lch_modules 1

#initialise data
data modify storage launch:module synthesisers set value "Synthesisers"

## --> SCOREBOARD DATA <--
