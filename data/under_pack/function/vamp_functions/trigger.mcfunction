scoreboard players set @s hemomancer 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=19}] unless entity @s[scores={locked1=2}] unless entity @s[scores={locked2=2}] run scoreboard players set @s class 19
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=19}] unless entity @s[scores={locked1=2}] unless entity @s[scores={locked2=2}] run scoreboard players set @s class 19
execute unless entity @s[scores={class=19}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 19 run function under_pack:vamp_functions/start