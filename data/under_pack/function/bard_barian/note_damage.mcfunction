particle minecraft:flash{color:[1.000,1.000,1.000,1.000]} ~ ~ ~ 0 0 0 1 1
particle minecraft:note ~ ~ ~ 1 1 1 0.1 10

execute if entity @s[team=uBlue] run damage @s 3 player_attack by @p[team=uRed,scores={class=17}]
execute if entity @s[team=uBlue] run kill @n[tag=Note,tag=uRed]

execute if entity @s[team=uRed] run damage @s 3 player_attack by @p[team=uBlue,scores={class=17}]
execute if entity @s[team=uRed] run kill @n[tag=Note,tag=uBlue]
