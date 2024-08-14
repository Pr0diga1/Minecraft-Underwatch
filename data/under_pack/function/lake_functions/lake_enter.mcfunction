#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s lake 0
#adds lake tag
tag @s add lake

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined Lake
scoreboard players add lake player_num 1
tellraw @a ["",{"text":"The amount of people in Lake is: ","color":"blue"},{"score":{"name":"lake","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s -514 118 -581
clear @s