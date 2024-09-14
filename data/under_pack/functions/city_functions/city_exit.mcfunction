#cityets player
execute as @s run function under_pack:general_functions/general_restart

#how many people are in the lobby
execute as @s run me has left the city lobby.
scoreboard players remove city player_num 1
tellraw @a ["",{"text":"The amount of people in city is: ","color":"blue"},{"score":{"name":"city","objective":"player_num"},"color":"blue"}]

#removes tag
tag @s remove city