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
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] as @a[team=uRed,distance=1.1..1.9] run damage @s 2 magic
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] as @a[team=uBlue,distance=1.1..1.9] run damage @s 2 magic
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] as @a[team=uRed,distance=0.3..1] run damage @s 3 magic
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] as @a[team=uBlue,distance=0.3..1] run damage @s 3 magic
execute at @e[type=marker,tag=acid,tag=uBlue] if entity @s[team=uBlue] as @a[team=uRed,distance=..0.2] run damage @s 4 magic
execute at @e[type=marker,tag=acid,tag=uRed] if entity @s[team=uRed] as @a[team=uBlue,distance=..0.2] run damage @s 4 magic


# Kill Marker
execute if entity @s[tag=uBlue] run kill @e[tag=uBlue,type=marker,tag=acid,limit=1]
execute if entity @s[tag=uBlue] run kill @e[tag=uBlue,type=marker,tag=acid,limit=1]

# Remove tag
tag @s remove acid