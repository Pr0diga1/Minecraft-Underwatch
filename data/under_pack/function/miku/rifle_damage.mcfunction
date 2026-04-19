execute if entity @s[team=uBlue] run return run damage @s 2 under_pack:vulnerable by @p[team=uRed,scores={class=14}]
execute if entity @s[team=uRed] run return run damage @s 2 under_pack:vulnerable by @p[team=uBlue,scores={class=14}]
