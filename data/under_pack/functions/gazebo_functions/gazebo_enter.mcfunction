#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s gazebo 0
#adds gazebo tag
tag @s add gazebo

#says in chat how many people are in the map
execute as @s run me has joined Gazebo
scoreboard players add gazebo player_num 1
tellraw @a ["",{"text":"The amount of people in Gazebo is: ","color":"blue"},{"score":{"name":"gazebo","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s -1582 57 -582
clear @s