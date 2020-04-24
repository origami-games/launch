#called by load

data modify storage launch:module list_split set value ", "
execute store success score #last_is_split lch_modules run data modify storage launch:module list_split set from storage launch:module dependency_issues[-1]
execute if score #last_is_split lch_modules matches 0 run data remove storage launch:module dependency_issues[-1]

tellraw @a {"translate":"%1$s%5457876$s","with":[[{"text":""}],[[{"text":"","color":"red"}],[[{"text":"    ","color":"dark_red"},{"score":{"name":"#dependency_issues","objective":"lch_modules"}},{"text":" "},{"translate":"pack.launch.dependency_issues"},{"text":": "},{"storage":"launch:module","nbt":"dependency_issues","interpret":true}]]]]}

execute if score synthesisers lch_modules matches -1 run datapack disable "file/lch_synthesisers"
execute if score gravity_pads lch_modules matches -1 run datapack disable "file/lch_gravity_pads"
