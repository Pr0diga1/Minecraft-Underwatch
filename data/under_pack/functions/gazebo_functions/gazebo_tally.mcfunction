#if red won the round give them credit for it
execute if score red_gazebo points matches 100 run title @a[tag=gazebo] title {"text":"Red Wins The Round!","color":"red"}
execute if score red_gazebo points matches 100 run scoreboard players add gazebo_red_wins points 1
#if blue won the round give them credit for it
execute if score blue_gazebo points matches 100 run title @a[tag=gazebo] title {"text":"Blue Wins The Round!","color":"blue"}
execute if score blue_gazebo points matches 100 run scoreboard players add gazebo_blue_wins points 1

#reset everyone
execute run function under_pack:gazebo_functions/gazebo_round_end

#if red won the game give them credit
execute if score gazebo_red_wins points matches 2 run title @a[tag=gazebo] title {"text":"Red Wins!","color":"red"}
execute if score gazebo_red_wins points matches 2 as @a[tag=gazebo] run function under_pack:gazebo_functions/gazebo_restart
#if blue won the game give them credit
execute if score gazebo_blue_wins points matches 2 run title @a[tag=gazebo] title {"text":"Blue Wins!","color":"blue"}
execute if score gazebo_blue_wins points matches 2 as @a[tag=gazebo] run function under_pack:gazebo_functions/gazebo_restart