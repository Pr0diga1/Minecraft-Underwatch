#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s nylium 0
#adds nylium tag
tag @s add nylium

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined Nylium
scoreboard players add nylium player_num 1
tellraw @a ["",{"text":"The amount of people in Nylium is: ","color":"blue"},{"score":{"name":"nylium","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s -592 65 109
clear @s