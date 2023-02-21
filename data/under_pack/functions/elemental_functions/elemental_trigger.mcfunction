scoreboard players set @s elemental 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=12}] unless entity @s[scores={locked1=12}] unless entity @s[scores={locked2=12}] run scoreboard players set @s class 12
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=12}] unless entity @s[scores={locked1=12}] unless entity @s[scores={locked2=12}] run scoreboard players set @s class 12
execute unless entity @s[scores={class=12}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 12 run function under_pack:elemental_functions/elemental_start