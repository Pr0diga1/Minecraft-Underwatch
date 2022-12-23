#sets a buffer to whoever has control of the point
scoreboard players operation gazeboBuffer team = gazebo team
#updates the point for the tick
function under_pack:gazebo_functions/gazebo_point
#resets the clock if ownership of the point changed
execute unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo timer 0

#every 1.2 seconds, gives the controlling team 1 more percent
execute if score gazebo timer matches 24 if score gazebo team matches 0 run scoreboard players add red_gazebo points 1
execute if score gazebo timer matches 24 if score gazebo team matches 1 run scoreboard players add blue_gazebo points 1
#resets timer to start another cycle
execute if score gazebo timer matches 24 run scoreboard players set gazebo timer 0

#updates bossbars
execute store result bossbar count:gazebo_blue value run scoreboard players get blue_gazebo points
execute store result bossbar count:gazebo_red value run scoreboard players get red_gazebo points

#iterates the timer up 1
scoreboard players add gazebo timer 1

#ends game if a team wins
execute if score red_gazebo points matches 100 run function under_pack:gazebo_functions/gazebo_tally
execute if score blue_gazebo points matches 100 run function under_pack:gazebo_functions/gazebo_tally