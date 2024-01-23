scoreboard players set @s cyborg 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=15}] unless entity @s[scores={locked1=15}] unless entity @s[scores={locked2=15}] run scoreboard players set @s class 15
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=15}] unless entity @s[scores={locked1=15}] unless entity @s[scores={locked2=15}] run scoreboard players set @s class 15
execute unless entity @s[scores={class=15}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 15 run function under_pack:cyborg_functions/cyborg_start