scoreboard players set @s mermaid 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=11}] run scoreboard players set @s class 11
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=11}] run scoreboard players set @s class 11
execute if score @s class matches 11 run function under_pack:mermaid_functions/mermaid_start