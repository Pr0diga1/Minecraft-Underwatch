scoreboard players set @s paladin 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=4}] run scoreboard players set @s class 4
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=4}] run scoreboard players set @s class 4
execute if score @s class matches 4 run function under_pack:knight_functions/knight_start