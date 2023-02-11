execute if entity @s[team=uRed] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uRed","swap"]}
execute if entity @s[team=uBlue] anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["uBlue","swap"]}

execute as @e[type=marker,tag=swap,tag=uBlue] run function under_pack:rogue_functions/raycast

item modify entity @s hotbar.3 under_pack:rogue/swap_target