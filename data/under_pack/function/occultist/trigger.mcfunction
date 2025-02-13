scoreboard players reset @s occultist
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=21}] unless entity @s[scores={locked1=21}] unless entity @s[scores={locked2=21}] run scoreboard players set @s class 21
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=21}] unless entity @s[scores={locked1=21}] unless entity @s[scores={locked2=21}] run scoreboard players set @s class 21
execute unless entity @s[scores={class=21}] run tellraw @s {"text":"Locked","color":"red"}
execute if score @s class matches 21 run function under_pack:occultist/start

scoreboard players add Occultist classTotal 1
scoreboard players add @s TallyCult 1
