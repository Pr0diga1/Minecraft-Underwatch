#puts people who run /trigger gazebo in the gazebo lobby and resets /trigger
execute as @a[scores={gazebo=1..}] at @s run function under_pack:gazebo_functions/gazebo_enter
scoreboard players enable @a gazebo