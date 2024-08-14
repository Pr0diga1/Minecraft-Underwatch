#if red won the round give them credit for it
execute if score red_lake points matches 100 run title @a[tag=lake] title {"text":"Red Wins The Round!","color":"red"}
execute if score red_lake points matches 100 run scoreboard players add lake_red_wins points 1
#if blue won the round give them credit for it
execute if score blue_lake points matches 100 run title @a[tag=lake] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score blue_lake points matches 100 run scoreboard players add lake_blue_wins points 1

#reset everyone
execute run function under_pack:lake_functions/lake_round_end

#if red won the game give them credit
execute if score lake_red_wins points matches 2 run title @a[tag=lake] title {"text":"Red Wins!","color":"red"}
execute if score lake_red_wins points matches 2 as @a[tag=lake] run function under_pack:lake_functions/lake_restart
#if blue won the game give them credit
execute if score lake_blue_wins points matches 2 run title @a[tag=lake] title {"text":"Blue Wins!","color":"blue"}
execute if score lake_blue_wins points matches 2 as @a[tag=lake] run function under_pack:lake_functions/lake_restart