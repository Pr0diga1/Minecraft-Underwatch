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
execute if entity @s[tag=uBlue] run damage @a[team=uRed,distance=1.1..1.9] 2 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s
execute if entity @s[tag=uRed] run damage @a[team=uBlue,distance=1.1..1.9] 2 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s
execute if entity @s[tag=uBlue] run damage @a[team=uRed,distance=0.3..1] 3 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s
execute if entity @s[tag=uRed] run damage @a[team=uBlue,distance=0.3..1] 3 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s
execute if entity @s[tag=uBlue] run damage @a[team=uRed,distance=..0.2] 4 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s
execute if entity @s[tag=uRed] run damage @a[team=uBlue,distance=..0.2] 4 magic by @e[type=minecraft:potion,limit=1,sort=nearest] from @s


# Kill Marker
execute if entity @s[tag=uBlue] run kill @e[tag=uBlue,type=marker,tag=acid,limit=1]
execute if entity @s[tag=uBlue] run kill @e[tag=uBlue,type=marker,tag=acid,limit=1]

# Remove tag
tag @s remove acid