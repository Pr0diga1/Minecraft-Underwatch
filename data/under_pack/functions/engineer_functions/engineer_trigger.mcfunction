scoreboard players set @s engineer 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=3}] run scoreboard players set @s class 3
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=3}] run scoreboard players set @s class 3
execute if score @s class matches 3 run function under_pack:engineer_functions/engineer_start