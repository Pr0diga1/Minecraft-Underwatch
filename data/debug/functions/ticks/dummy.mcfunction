execute store result score @s buffer run data get entity @s Health 1
execute if entity @s[scores={buffer=..5}] run data modify entity @s Health set value 20
execute store result bossbar debug:test_dummy value run data get entity @s Health 1