#give the levitation
effect give @s levitation 1 75
#set the timer
scoreboard players set @s elementalWindTimer 51
#remove the bar value
scoreboard players remove @s elementalBar 300
#give the elytra
item replace entity @s armor.chest with elytra{Unbreakable:1b} 1