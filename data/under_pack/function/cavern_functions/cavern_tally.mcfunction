#if red won the round give them credit for it
execute if score red_cavern points matches 100 run title @a[tag=cavern] title {"text":"Red Wins The Round!","color":"red"}
execute if score red_cavern points matches 100 run scoreboard players add cavern_red_wins points 1
#if blue won the round give them credit for it
execute if score blue_cavern points matches 100 run title @a[tag=cavern] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score blue_cavern points matches 100 run scoreboard players add cavern_blue_wins points 1

#reset everyone
execute run function under_pack:cavern_functions/cavern_round_end

#if red won the game give them credit
execute if score cavern_red_wins points matches 2 run title @a[tag=cavern] title {"text":"Red Wins!","color":"red"}
execute if score cavern_red_wins points matches 2 as @a[tag=cavern] run function under_pack:cavern_functions/cavern_restart
#if blue won the game give them credit
execute if score cavern_blue_wins points matches 2 run title @a[tag=cavern] title {"text":"Blue Wins!","color":"blue"}
execute if score cavern_blue_wins points matches 2 as @a[tag=cavern] run function under_pack:cavern_functions/cavern_restart