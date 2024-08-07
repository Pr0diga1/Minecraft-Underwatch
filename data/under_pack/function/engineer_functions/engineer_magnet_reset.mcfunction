execute if entity @s[team=uBlue] run tag @a[team=uRed] remove magneticblue
execute if entity @s[team=uBlue] run scoreboard players reset blue engineermagnet
execute if entity @s[team=uBlue] run advancement revoke @a[team=uRed] only under_pack:magnet

execute if entity @s[team=uRed] run tag @a[team=uBlue] remove magneticred
execute if entity @s[team=uRed] run scoreboard players reset red engineermagnet
execute if entity @s[team=uRed] run advancement revoke @a[team=uBlue] only under_pack:magnet

tellraw @s {"text":"You Have Reset Magnitization"}