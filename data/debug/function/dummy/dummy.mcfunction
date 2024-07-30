execute store result score @s buffer run data get entity @s Health 1
scoreboard players operation @s buffer -= OneHundred constant
data modify entity @s Health set value 100
execute store result bossbar debug:test_dummy value run data get entity @s Health 1

tellraw @p {"score":{"name":"@s","objective":"buffer"}}