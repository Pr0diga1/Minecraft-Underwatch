scoreboard players set @s lumberjack 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=5}] run scoreboard players set @s class 5
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=5}] run scoreboard players set @s class 5
execute if score @s class matches 5 run function under_pack:lumberjack_functions/lumberjack_start