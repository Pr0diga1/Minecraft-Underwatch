# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["telepot","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["telepot","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlueT buffer
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlueT buffer
execute if entity @s[team=uBlue] store result entity @e[tag=telepot,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlueT buffer

execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRedT buffer
execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRedT buffer
execute if entity @s[team=uRed] store result entity @e[tag=telepot,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRedT buffer

# Move player to proper position
execute if entity @s[team=uBlue] at @e[tag=telepot,type=marker,limit=1,tag=uBlue] run teleport @s ~ ~ ~
execute if entity @s[team=uRed] at @e[tag=telepot,type=marker,limit=1,tag=uRed] run teleport @s ~ ~ ~

execute at @e[tag=telepot,type=marker,limit=1] run particle minecraft:dragon_breath ~ ~.3 ~ .3 .3 .3 .2 100 force @a

# Kill thingy
kill @e[tag=telepot,type=marker,limit=1,sort=nearest]

# Remove tag
tag @s remove telepot