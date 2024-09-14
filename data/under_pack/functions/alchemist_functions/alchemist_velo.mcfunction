# 1.5x velocity for all potions without the telepot check tag
#x
execute store result score alchTelepot buffer run data get entity @s Motion[0] 1000
execute store result entity @s Motion[0] double 0.0012 run scoreboard players get alchTelepot buffer
#y
execute store result score alchTelepot buffer run data get entity @s Motion[1] 1000
execute store result entity @s Motion[1] double 0.0012 run scoreboard players get alchTelepot buffer
#z
execute store result score alchTelepot buffer run data get entity @s Motion[2] 1000
execute store result entity @s Motion[2] double 0.0012 run scoreboard players get alchTelepot buffer
