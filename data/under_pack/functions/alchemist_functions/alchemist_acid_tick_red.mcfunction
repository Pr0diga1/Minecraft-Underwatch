# Store's position of telepot
execute if entity @e[type=potion,tag=acid,tag=uRed] store result score xposRedA buffer run data get entity @e[type=potion,tag=acid,tag=uRed,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=acid,tag=uRed] store result score yposRedA buffer run data get entity @e[type=potion,tag=acid,tag=uRed,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=acid,tag=uRed] store result score zposRedA buffer run data get entity @e[type=potion,tag=acid,tag=uRed,limit=1] Pos[2] 100
