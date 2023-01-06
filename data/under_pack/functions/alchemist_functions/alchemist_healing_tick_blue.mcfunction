# Store's position of telepot
execute if entity @e[type=potion,tag=healing,tag=uBlue] store result score xposBlueH buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=healing,tag=uBlue] store result score yposBlueH buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=healing,tag=uBlue] store result score zposBlueH buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[2] 100

# Teleports based on team when pot smashes
execute unless entity @e[type=potion,tag=healing,tag=uBlue] run function under_pack:alchemist_functions/alchemist_telepot
