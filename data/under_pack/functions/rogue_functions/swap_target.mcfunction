execute if entity @s[team=uRed] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uRed","swap"]}
execute if entity @s[team=uBlue] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uBlue","swap"]}

scoreboard players set hit buffer 0
scoreboard players set distance buffer 0

tag @s add swap
execute as @a[tag=swap] run say hi
execute as @e[type=marker,tag=swap] at @s run function under_pack:rogue_functions/raycast

scoreboard players reset @s reset