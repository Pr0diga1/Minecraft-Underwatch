#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s ruin 0
#adds ruin tag
tag @s add ruin

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined ruin
scoreboard players add ruin player_num 1
tellraw @a ["",{"text":"The amount of people in ruin is: ","color":"blue"},{"score":{"name":"ruin","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s 8 69 558
clear @s