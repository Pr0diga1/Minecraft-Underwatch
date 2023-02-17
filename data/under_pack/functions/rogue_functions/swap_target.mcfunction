execute if entity @s[team=uRed] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uRed","swap"]}
execute if entity @s[team=uBlue] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uBlue","swap"]}

tag @s add swap
execute as @e[type=marker,tag=swap] run function under_pack:rogue_functions/raycast

scoreboard players reset @s reset