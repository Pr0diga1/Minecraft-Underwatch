#if red won the round give them credit for it
execute if score red_city points matches 100 run title @a[tag=city] title {"text":"Red Wins The Round!","color":"red"}
execute if score red_city points matches 100 run scoreboard players add city_red_wins points 1
#if blue won the round give them credit for it
execute if score blue_city points matches 100 run title @a[tag=city] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score blue_city points matches 100 run scoreboard players add city_blue_wins points 1

#reset everyone
execute run function under_pack:city_functions/city_point/city_round_end

#if red won the game give them credit
execute if score city_red_wins points matches 2 run title @a[tag=city] title {"text":"Red Wins!","color":"red"}
execute if score city_red_wins points matches 2 as @a[tag=city] run function under_pack:city_functions/city_point/city_restart
#if blue won the game give them credit
execute if score city_blue_wins points matches 2 run title @a[tag=city] title {"text":"Blue Wins!","color":"blue"}
execute if score city_blue_wins points matches 2 as @a[tag=city] run function under_pack:city_functions/city_point/city_restart