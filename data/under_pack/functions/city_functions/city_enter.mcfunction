#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s city 0
#adds city tag
tag @s add city

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined city
scoreboard players add city player_num 1
tellraw @a ["",{"text":"The amount of people in city is: ","color":"blue"},{"score":{"name":"city","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s 45 96 -1074
clear @s