scoreboard players set @s microwave 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=16}] unless entity @s[scores={locked1=16}] unless entity @s[scores={locked2=16}] run scoreboard players set @s class 16
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=16}] unless entity @s[scores={locked1=16}] unless entity @s[scores={locked2=16}] run scoreboard players set @s class 16
execute unless entity @s[scores={class=16}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 16 run function under_pack:microwave_functions/start

scoreboard players add Microwave classTotal 1
scoreboard players add @s TallyMicro 1