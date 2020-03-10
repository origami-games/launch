#notifies everyone that the pack has downdated and disables the pack
#called by launch/build/check if it finds you are downdating

tellraw @a {"translate":"text.launch.downdate","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/customization/launch/files"},"color":"red"}
datapack disable "file/launch_data"
tellraw @a {"translate":"text.launch.downdate.done","color":"green"}
scoreboard players operation build_number lch_data = build_number_prev lch_data
