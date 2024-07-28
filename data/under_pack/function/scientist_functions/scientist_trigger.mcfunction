scoreboard players set @s scientist 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=9}] unless entity @s[scores={locked1=9}] unless entity @s[scores={locked2=9}] run scoreboard players set @s class 9
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=9}] unless entity @s[scores={locked1=9}] unless entity @s[scores={locked2=9}] run scoreboard players set @s class 9
execute unless entity @s[scores={class=9}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 9 run function under_pack:scientist_functions/scientist_start