scoreboard players set @s rogue 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=8}] run scoreboard players set @s class 8
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=8}] run scoreboard players set @s class 8
execute if score @s class matches 8 run function under_pack:rogue_functions/rogue_start