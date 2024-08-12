execute if entity @s[team=uBlue] run tag @s remove magneticred
execute if entity @s[team=uBlue] run scoreboard players reset red engineermagnet
execute if entity @s[team=uBlue] run advancement revoke @s only under_pack:magnet

execute if entity @s[team=uRed] run tag @s remove magneticblue
execute if entity @s[team=uRed] run scoreboard players reset blue engineermagnet
execute if entity @s[team=uRed] run advancement revoke @s only under_pack:magnet

tellraw @s {"text":"You are no longer magnetized"}