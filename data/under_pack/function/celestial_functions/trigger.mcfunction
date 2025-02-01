scoreboard players set @s celestial 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=20}] unless entity @s[scores={locked1=20}] unless entity @s[scores={locked2=20}] run scoreboard players set @s class 20
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=20}] unless entity @s[scores={locked1=20}] unless entity @s[scores={locked2=20}] run scoreboard players set @s class 20
execute unless entity @s[scores={class=20}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 20 run function under_pack:celestial_functions/start

scoreboard players add Celestial classTotal 1
scoreboard players add @s TallyLumb 1