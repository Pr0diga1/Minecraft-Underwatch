scoreboard players set @s dark_soul 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=13}] unless entity @s[scores={locked1=13}] unless entity @s[scores={locked2=13}] run scoreboard players set @s class 13
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=13}] unless entity @s[scores={locked1=13}] unless entity @s[scores={locked2=13}] run scoreboard players set @s class 13
execute unless entity @s[scores={class=13}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 13 at @s run function under_pack:dark_soul_functions/start