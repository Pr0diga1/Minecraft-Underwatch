execute if entity @s[team=uBlue] run damage @s 4 generic by @p[team=uRed,scores={class=13}]
execute if entity @s[team=uRed] run damage @s 4 generic by @p[team=uBlue,scores={class=13}]

tag @s add hit_darksoul
