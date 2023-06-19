#give tag
tag @s add lumberDrop

#give levitation
effect give @s levitation 2 56 true

#playsound
execute at @s run playsound item.elytra.flying master @a ~ ~ ~ 70 1

scoreboard players set @s ability1 0
scoreboard players reset @s reset
