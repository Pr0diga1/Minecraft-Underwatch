#resets player
execute as @s run function under_pack:general_functions/general_restart

#how many people are in the lobby
execute as @s run me has left the ruin lobby.
scoreboard players remove ruin player_num 1
tellraw @a ["",{"text":"The amount of people in ruin is: ","color":"blue"},{"score":{"name":"ruin","objective":"player_num"},"color":"blue"}]

#removes tag
tag @s remove ruin