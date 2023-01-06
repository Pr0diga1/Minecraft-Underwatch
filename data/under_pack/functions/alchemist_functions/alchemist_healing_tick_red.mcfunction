# Store's position of telepot
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score xposRedH buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score yposRedH buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=telepot,tag=uRed] store result score zposRedH buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[2] 100
