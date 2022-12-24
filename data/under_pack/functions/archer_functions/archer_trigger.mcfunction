scoreboard players set @s archer 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=2}] run scoreboard players set @s class 2
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=2}] run scoreboard players set @s class 2
execute if score @s class matches 2 run function under_pack:archer_functions/archer_start