# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["healing","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["healing","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlueH buffer
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlueH buffer
execute if entity @s[team=uBlue] store result entity @e[tag=healing,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlueH buffer

execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRedH buffer
execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRedH buffer
execute if entity @s[team=uRed] store result entity @e[tag=healing,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRedH buffer

# Remove tag
tag @s remove healing