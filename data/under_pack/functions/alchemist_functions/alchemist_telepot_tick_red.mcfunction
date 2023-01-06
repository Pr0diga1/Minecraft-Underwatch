# Store's position of telepot
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score xposRedT buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score yposRedT buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score zposRedT buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[2] 100

# Teleports based on team when pot smashes
execute unless entity @e[type=potion,tag=telepot,tag=uRed] run function under_pack:alchemist_functions/alchemist_telepot
