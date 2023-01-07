# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["mustard_gas","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["mustard_gas","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlueU buffer
execute if entity @s[team=uBlue] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlueU buffer
execute if entity @s[team=uBlue] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlueU buffer

execute if entity @s[team=uRed] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRedU buffer
execute if entity @s[team=uRed] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRedU buffer
execute if entity @s[team=uRed] store result entity @e[tag=mustard_gas,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRedU buffer

# Remove tag and charge
tag @s remove mustard_gas
function under_pack:alchemist_functions/ult_end