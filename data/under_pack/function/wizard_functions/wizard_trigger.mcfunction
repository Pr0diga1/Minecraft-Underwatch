scoreboard players set @s wizard 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=10}] unless entity @s[scores={locked1=10}] unless entity @s[scores={locked2=10}] run scoreboard players set @s class 10
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=10}] unless entity @s[scores={locked1=10}] unless entity @s[scores={locked2=10}] run scoreboard players set @s class 10
execute unless entity @s[scores={class=10}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 10 run function under_pack:wizard_functions/wizard_start