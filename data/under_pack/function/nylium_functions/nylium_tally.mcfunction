#if red won the round give them credit for it
execute if score red_nylium points matches 100 run title @a[tag=nylium] title {"text":"Red Wins The Round!","color":"red"}
execute if score red_nylium points matches 100 run scoreboard players add nylium_red_wins points 1
#if blue won the round give them credit for it
execute if score blue_nylium points matches 100 run title @a[tag=nylium] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score blue_nylium points matches 100 run scoreboard players add nylium_blue_wins points 1

#reset everyone
execute run function under_pack:nylium_functions/nylium_round_end

#if red won the game give them credit
execute if score nylium_red_wins points matches 2 run title @a[tag=nylium] title {"text":"Red Wins!","color":"red"}
execute if score nylium_red_wins points matches 2 as @a[tag=nylium] run function under_pack:nylium_functions/nylium_restart
#if blue won the game give them credit
execute if score nylium_blue_wins points matches 2 run title @a[tag=nylium] title {"text":"Blue Wins!","color":"blue"}
execute if score nylium_blue_wins points matches 2 as @a[tag=nylium] run function under_pack:nylium_functions/nylium_restart