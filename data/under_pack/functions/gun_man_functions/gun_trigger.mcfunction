scoreboard players set @s gun_man 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=14}] unless entity @s[scores={locked1=14}] unless entity @s[scores={locked2=14}] run scoreboard players set @s class 14
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=14}] unless entity @s[scores={locked1=14}] unless entity @s[scores={locked2=14}] run scoreboard players set @s class 14
execute unless entity @s[scores={class=14}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 14 as @s run function under_pack:gun_man_functions/gun_start