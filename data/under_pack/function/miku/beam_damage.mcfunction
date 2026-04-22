execute if entity @s[team=uBlue] run return run damage @s 10 player_attack by @p[team=uRed,scores={class=14}]
execute if entity @s[team=uRed] run return run damage @s 10 player_attack by @p[team=uBlue,scores={class=14}]
