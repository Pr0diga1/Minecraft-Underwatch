#if a gazebo game is active, run its tick function every tick
execute if score gazebo swag matches 1 run function under_pack:gazebo_functions/gazebo_tick

#if someone has a death, run the death function
execute as @a if score @s uDeaths matches 1.. run function under_pack:general_functions/general_death

#ghost blocks, I need to make an exception for ghost blocks that should disappear
execute as @e[type=falling_block] run data merge entity @s {Time:5}
#kills chickens when eggs are thrown. Very important.
kill @e[type=chicken]

#no natural health regen
gamerule naturalRegeneration false
#saturation
effect give @a saturation 1 255 true