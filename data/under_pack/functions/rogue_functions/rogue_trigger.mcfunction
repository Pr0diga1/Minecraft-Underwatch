scoreboard players set @s rogue 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=8}] unless entity @s[scores={locked1=8}] unless entity @s[scores={locked2=8}] run scoreboard players set @s class 8
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=8}] unless entity @s[scores={locked1=8}] unless entity @s[scores={locked2=8}] run scoreboard players set @s class 8
execute unless entity @s[scores={class=8}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 8 run function under_pack:rogue_functions/rogue_start