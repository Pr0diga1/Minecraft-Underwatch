#if red won the round give them credit for it
execute if score city_winning team matches 0 run title @a[tag=city] title {"text":"Red Wins The Round!","color":"red"}
execute if score city_winning team matches 0 run scoreboard players add city_red_wins points 1
execute if score city_winning team matches 0 if score city_red_wins points matches 1 as @a[tag=city,team=uRed] run function under_pack:trigger_functions/lock1
execute if score city_winning team matches 0 if score city_red_wins points matches 2 as @a[tag=city,team=uRed] run function under_pack:trigger_functions/lock2
#if blue won the round give them credit for it
execute if score city_winning team matches 1 run title @a[tag=city] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score city_winning team matches 1 run scoreboard players add city_blue_wins points 1
execute if score city_winning team matches 1 if score city_blue_wins points matches 1 as @a[tag=city,team=uBlue] run function under_pack:trigger_functions/lock1
execute if score city_winning team matches 1 if score city_blue_wins points matches 2 as @a[tag=city,team=uBlue] run function under_pack:trigger_functions/lock2

#reset everyone
function under_pack:city_functions/city_dm/city_round_end

#if red won the game give them credit
execute if score city_red_wins points matches 3 run title @a[tag=city] title {"text":"Red Wins!","color":"red"}
execute if score city_red_wins points matches 3 as @a[tag=city] run function under_pack:city_functions/city_dm/city_restart
#if blue won the game give them credit
execute if score city_blue_wins points matches 3 run title @a[tag=city] title {"text":"Blue Wins!","color":"blue"}
execute if score city_blue_wins points matches 3 as @a[tag=city] run function under_pack:city_functions/city_dm/city_restart