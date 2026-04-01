#bat
execute if score @s vampdetect matches 0.. run scoreboard players remove @s vampdetect 1
execute if score @s vampdetect matches 0 run function under_pack:vamp_functions/bat_die_red
