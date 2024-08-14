#resets player
execute as @s run function under_pack:general_functions/general_restart

#how many people are in the lobby
execute as @s run me has left the Lake lobby.
scoreboard players remove lake player_num 1
tellraw @a ["",{"text":"The amount of people in Lake is: ","color":"blue"},{"score":{"name":"lake","objective":"player_num"},"color":"blue"}]

#removes tag
tag @s remove lake