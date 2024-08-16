#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s cavern 0
#adds cavern tag
tag @s add cavern

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined Cavern
scoreboard players add cavern player_num 1
tellraw @a ["",{"text":"The amount of people in Cavern is: ","color":"blue"},{"score":{"name":"cavern","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s -5 87 -686
clear @s