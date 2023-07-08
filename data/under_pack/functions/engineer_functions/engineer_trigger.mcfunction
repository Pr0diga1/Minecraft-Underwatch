scoreboard players set @s engineer 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=3}] unless entity @s[scores={locked1=3}] unless entity @s[scores={locked2=3}] run scoreboard players set @s class 3
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=3}] unless entity @s[scores={locked1=3}] unless entity @s[scores={locked2=3}] run scoreboard players set @s class 3
execute unless entity @s[scores={class=3}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 3 run function under_pack:engineer_functions/engineer_start