execute if entity @s[team=uRed] run tp @s @a[tag=2bpr,limit=1,sort=nearest]
execute if entity @s[team=uBlue] run tp @s @a[tag=2bpb,limit=1,sort=nearest]

scoreboard players reset @s ability7
execute if entity @s[team=uRed] run tag @a remove 2bpr
execute if entity @s[team=uBlue] run tag @a remove 2bpb

scoreboard players set @s ability5 240

item replace entity @s[team=uRed] hotbar.2 with barrier[custom_data={"celeswap":1b,"red":1b}] 12
item replace entity @s[team=uBlue] hotbar.2 with barrier[custom_data={"celeswap":1b,"blue":1b}] 12