execute if entity @s[team=uBlue] run damage @s 4.5 player_attack by @p[team=uRed,scores={class=13}] from @p[team=uRed,scores={class=13}]
execute if entity @s[team=uRed] run damage @s 4.5 player_attack by @p[team=uBlue,scores={class=13}] from @p[team=uBlue,scores={class=13}]

tag @s add hit_darksoul
