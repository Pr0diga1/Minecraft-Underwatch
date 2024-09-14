# Summons marker
execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["acid","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["acid","uRed"]}

# Moves to required postition
execute if entity @s[team=uBlue] store result entity @e[tag=acid,type=marker,limit=1,tag=uBlue] Pos[0] double 0.01 run scoreboard players get xposBlueA buffer
execute if entity @s[team=uBlue] store result entity @e[tag=acid,type=marker,limit=1,tag=uBlue] Pos[1] double 0.01 run scoreboard players get yposBlueA buffer
execute if entity @s[team=uBlue] store result entity @e[tag=acid,type=marker,limit=1,tag=uBlue] Pos[2] double 0.01 run scoreboard players get zposBlueA buffer

execute if entity @s[team=uRed] store result entity @e[tag=acid,type=marker,limit=1,tag=uRed] Pos[0] double 0.01 run scoreboard players get xposRedA buffer
execute if entity @s[team=uRed] store result entity @e[tag=acid,type=marker,limit=1,tag=uRed] Pos[1] double 0.01 run scoreboard players get yposRedA buffer
execute if entity @s[team=uRed] store result entity @e[tag=acid,type=marker,limit=1,tag=uRed] Pos[2] double 0.01 run scoreboard players get zposRedA buffer

# Deal Damage
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=uRed,dx=1] run damage @s 5 magic by @a[scores={class=1},team=uBlue,limit=1]
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=uBlue,dx=1] run damage @s 5 magic by @a[scores={class=1},team=uRed,limit=1]
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] positioned ~-1.5 ~-0.5 ~-1.5 as @a[team=uRed,dx=3,dy=3,dz=3] run damage @s 3 magic by @a[scores={class=1},team=uBlue,limit=1]
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] positioned ~-1.5 ~-0.5 ~-1.5 as @a[team=uBlue,dx=3,dy=3,dz=3] run damage @s 3 magic by @a[scores={class=1},team=uRed,limit=1]
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] positioned ~-2 ~-0.5 ~-2 as @a[team=uRed,dx=4,dy=4,dz=4] run damage @s 1 magic by @a[scores={class=1},team=uBlue,limit=1]
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] positioned ~-2 ~-0.5 ~-2 as @a[team=uBlue,dx=4,dy=4,dz=4] run damage @s 1 magic by @a[scores={class=1},team=uRed,limit=1]


execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] run particle dust 0 1 0 1 ~ ~.2 ~ .23 .05 .23 1 15 force @a 
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] run particle dust 0 1 0 1 ~ ~.2 ~ .23 .05 .23 1 15 force @a 

# Kill Marker
execute if entity @s[team=uBlue] run kill @e[tag=uBlue,type=marker,tag=acid]
execute if entity @s[team=uRed] run kill @e[tag=uRed,type=marker,tag=acid]

# Remove tag
tag @s remove acid