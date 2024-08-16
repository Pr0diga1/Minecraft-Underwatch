scoreboard players set @s coldsteel 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=18}] unless entity @s[scores={locked1=2}] unless entity @s[scores={locked2=2}] run scoreboard players set @s class 18
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=18}] unless entity @s[scores={locked1=2}] unless entity @s[scores={locked2=2}] run scoreboard players set @s class 18
execute unless entity @s[scores={class=18}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 18 run function under_pack:coldsteel_functions/start