#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s park 0
#adds park tag
tag @s add park

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined park
scoreboard players add park player_num 1
tellraw @a ["",{"text":"The amount of people in park is: ","color":"blue"},{"score":{"name":"park","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s 625 43 -25
clear @s