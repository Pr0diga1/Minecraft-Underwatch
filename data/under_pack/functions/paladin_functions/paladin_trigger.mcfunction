scoreboard players set @s paladin 0
execute as @s[team=uRed,tag=ungame] unless entity @a[team=uRed,tag=ungame,scores={class=7}] run scoreboard players set @s class 7
execute as @s[team=uBlue,tag=ungame] unless entity @a[team=uBlue,tag=ungame,scores={class=7}] run scoreboard players set @s class 7
execute if score @s class matches 7 run function under_pack:paladin_functions/paladin_start