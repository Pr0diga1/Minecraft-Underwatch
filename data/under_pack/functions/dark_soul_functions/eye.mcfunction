#add 1 to the counter
scoreboard players add @s darkEye 1

execute if score @s darkEye matches 100.. run scoreboard players set @s darkEye 0

execute if score @s darkEye matches 20 run effect give @s speed 1 16 true
execute if score @s darkEye matches 40 run effect give @s speed 1 16 true
execute if score @s darkEye matches 60 run effect give @s speed 1 60 true
execute if score @s darkEye matches 25 run effect clear @s speed
execute if score @s darkEye matches 45 run effect clear @s speed
execute if score @s darkEye matches 63 run effect clear @s speed

effect give @s speed 1 6 true