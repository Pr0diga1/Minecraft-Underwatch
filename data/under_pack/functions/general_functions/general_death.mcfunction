#run gazebo death if they are in a gazebo game
execute if score gazebo swag matches 1 as @s[tag=gazebo] run function under_pack:gazebo_functions/gazebo_death
#run park death if they are in a park game
execute if score park swag matches 1 as @s[tag=park] run function under_pack:park_functions/park_death

#set deaths back to 0 so this isn't run every tick
scoreboard players set @s uDeaths 0