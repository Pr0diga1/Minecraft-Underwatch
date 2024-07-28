scoreboard players set @s lumberjack 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=5}] unless entity @s[scores={locked1=5}] unless entity @s[scores={locked2=5}] run scoreboard players set @s class 5
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=5}] unless entity @s[scores={locked1=5}] unless entity @s[scores={locked2=5}] run scoreboard players set @s class 5
execute unless entity @s[scores={class=5}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 5 run function under_pack:lumberjack_functions/lumberjack_start