#resets player
execute as @s run function under_pack:general_functions/general_restart

#how many people are in the lobby
execute as @s run me has left the res lobby.
scoreboard players remove res player_num 1
tellraw @a ["",{"text":"The amount of people in res is: ","color":"blue"},{"score":{"name":"res","objective":"player_num"},"color":"blue"}]

#removes tag
tag @s remove res