#player gets their trigger command set back to 0, so it doesn't run this every tick
scoreboard players set @s res 0
#adds res tag
tag @s add res

#empty deaths
scoreboard players set @s uDeaths 0

#says in chat how many people are in the map
execute as @s run me has joined res
scoreboard players add res player_num 1
tellraw @a ["",{"text":"The amount of people in res is: ","color":"blue"},{"score":{"name":"res","objective":"player_num"},"color":"blue"}]

#tps player to lobby and clears them
tp @s -598 113 -495
clear @s