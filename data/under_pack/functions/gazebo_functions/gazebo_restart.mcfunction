#resets the players
execute as @s run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset gazebo team
scoreboard players reset red_gazebo points
scoreboard players reset blue_gazebo points
scoreboard players reset cap_gazebo points
scoreboard players reset gazebo timer
scoreboard players reset gazebo_red_wins points
scoreboard players reset gazebo_blue_wins points
scoreboard players set under active 0
scoreboard players set gazebo swag 0

#removes the tag from players
tag @s remove gazebo

#removes the bossbars
bossbar remove count:gazebo
bossbar remove count:gazebo_blue
bossbar remove count:gazebo_red