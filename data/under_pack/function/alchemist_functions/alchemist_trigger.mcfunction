scoreboard players set @s alchemist 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=1}] unless entity @s[scores={locked1=1}] unless entity @s[scores={locked2=1}] unless entity @s[scores={class=4}] run scoreboard players set @s class 1
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=1}] unless entity @s[scores={locked1=1}] unless entity @s[scores={locked2=1}] unless entity @s[scores={class=4}] run scoreboard players set @s class 1
execute unless entity @s[scores={class=1}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 1 at @s run function under_pack:alchemist_functions/alchemist_start