# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["healing","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["healing","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlue buffer
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlue buffer
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlue buffer

execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRed buffer
execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRed buffer
execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRed buffer

# Remove tag
tag @s remove healing