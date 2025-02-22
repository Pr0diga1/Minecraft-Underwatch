#effect give @s speed 10 0 true
scoreboard players add @s cyborgcap 125
experience add @s 125 points

#update timers
scoreboard players operation @s ability5 = @s ability4
scoreboard players operation @s ability4 = @s ability3
scoreboard players operation @s ability3 = @s ability2
scoreboard players operation @s ability2 = @s ability1
scoreboard players set @s ability1 180

#playsound
execute at @s run playsound block.metal_pressure_plate.click_on master @a ~ ~ ~ 1 0.75
