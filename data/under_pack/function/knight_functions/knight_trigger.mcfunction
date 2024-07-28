scoreboard players set @s paladin 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=4}] unless entity @s[scores={locked1=4}] unless entity @s[scores={locked2=4}] run scoreboard players set @s class 4
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=4}] unless entity @s[scores={locked1=4}] unless entity @s[scores={locked2=4}] run scoreboard players set @s class 4
execute unless entity @s[scores={class=4}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 4 run function under_pack:knight_functions/knight_start