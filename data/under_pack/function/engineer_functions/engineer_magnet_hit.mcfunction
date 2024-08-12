tag @s[team=uRed] add magneticblue
tag @s[team=uBlue] add magneticred
execute if entity @s[team=uRed] run scoreboard players add blue engineermagnet 1
execute if entity @s[team=uBlue] run scoreboard players add red engineermagnet 1
title @s subtitle {"text":"You Are Now Magnetized!"}
title @s title {"text":""}
scoreboard players set @s engineermagtimer 260


