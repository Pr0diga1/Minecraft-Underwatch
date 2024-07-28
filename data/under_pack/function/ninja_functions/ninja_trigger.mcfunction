scoreboard players set @s ninja 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=6}] unless entity @s[scores={locked1=6}] unless entity @s[scores={locked2=6}] run scoreboard players set @s class 6
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=6}] unless entity @s[scores={locked1=6}] unless entity @s[scores={locked2=6}] run scoreboard players set @s class 6
execute unless entity @s[scores={class=6}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 6 run function under_pack:ninja_functions/ninja_start