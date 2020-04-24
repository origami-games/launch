#called by #load

#initialise scoreboards
scoreboard objectives add lch_modules dummy

#load modules
scoreboard players reset * lch_modules
scoreboard players set $installed lch_modules 0
## set up lch_modules score
function #launch:module/setup
## verify dependencies AFTER registering scores
function #launch:module/verify_dependencies
## load data of modules that are still enabled, and compile a list
data modify storage launch:module list set value []
data modify storage launch:module list_split set value ", "
function #launch:module/load
execute store success score #last_is_split lch_modules run data modify storage launch:module list_split set from storage launch:module list[-1]
execute if score #last_is_split lch_modules matches 0 run data remove storage launch:module list[-1]

#notify
tellraw @a {"translate":"%1$s%5457876$s","with":[[{"text":"Enable the resource pack to play Launch!","color":"red"}],[[{"text":"","color":"aqua"}],[{"translate":"pack.launch.name"},{"text":": "},{"translate":"pack.load"}],[{"text":"\n    ","color":"dark_aqua"},{"score":{"name":"$installed","objective":"lch_modules"}},{"text":" "},{"translate":"pack.launch.modules"},{"text":": "},{"storage":"launch:module","nbt":"list","interpret":true}]]]}

#start clocks
schedule function #launch:clock16t 16t replace
