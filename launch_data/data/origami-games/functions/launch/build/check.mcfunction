#checks the version and compares it to see if there is an update or a downdate
#called by launch/load

#store build number
scoreboard players operation build_number_prev lch_data = build_number lch_data
#update current build number ***MODIFY BUILD COUNT HERE***
scoreboard players set build_number lch_data 8
#if updating, send update message
execute if score build_number_prev lch_data < build_number lch_data run tellraw @a {"translate":"text.launch.update","hoverEvent":{"action":"show_text","value":{"translate":"text.launch.update.hover_text"}},"clickEvent":{"action":"open_url","value":"https://origami-games.github.io/launch#features"},"color":"aqua"}
#if downdating, send warning message
execute if score build_number_prev lch_data > build_number lch_data run function origami-games:launch/build/downdating
#remove fake players
scoreboard players reset build_number_prev lch_data
#check server version
function origami-games:launch/build/server_version_check

#give feedback if ran by player
tellraw @s[type=player] [{"translate":"text.launch.update.build_number","color":"gray"},{"text":": ","color":"gray"},{"score":{"name":"build_number","objective":"lch_data"}},{"text":", ","color":"gray"},{"translate":"text.launch.update.server_version_number","color":"gray"},{"text":": 1.","color":"gray"},{"score":{"name":"server_version","objective":"lch_data"}}]
