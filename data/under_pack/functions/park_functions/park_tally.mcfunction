#if red won the round give them credit for it
execute if score park_winning team matches 0 run title @a[tag=park] title {"text":"Red Wins The Round!","color":"red"}
execute if score park_winning team matches 0 run scoreboard players add park_red_wins points 1
#if blue won the round give them credit for it
execute if score park_winning team matches 1 run title @a[tag=park] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score park_winning team matches 1 run scoreboard players add park_blue_wins points 1

#reset everyone
function under_pack:park_functions/park_round_end

#if red won the game give them credit
execute if score park_red_wins points matches 3 run title @a[tag=park] title {"text":"Red Wins!","color":"red"}
execute if score park_red_wins points matches 3 as @a[tag=park] run function under_pack:park_functions/park_restart
#if blue won the game give them credit
execute if score park_blue_wins points matches 3 run title @a[tag=park] title {"text":"Blue Wins!","color":"blue"}
execute if score park_blue_wins points matches 3 as @a[tag=park] run function under_pack:park_functions/park_restart