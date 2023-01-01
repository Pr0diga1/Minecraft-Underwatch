# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["telepot","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["telepot","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlue buffer
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlue buffer
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlue buffer

execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRed buffer
execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRed buffer
execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRed buffer

# Move player to proper position
execute if entity @s[team=uBlue] at @e[tag=telepot,type=marker,limit=1,tag=uBlue] run teleport @s ~ ~ ~
execute if entity @s[team=uRed] at @e[tag=telepot,type=marker,limit=1,tag=uRed] run teleport @s ~ ~ ~

# Kill thingy
kill @e[tag=telepot,type=marker,limit=1,sort=nearest]

# Remove tag
tag @s remove telepot