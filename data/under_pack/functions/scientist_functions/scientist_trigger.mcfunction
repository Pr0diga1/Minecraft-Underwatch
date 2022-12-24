scoreboard players set @s scientist 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=9}] run scoreboard players set @s class 9
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=9}] run scoreboard players set @s class 9
execute if score @s class matches 9 run function under_pack:scientist_functions/scientist_start