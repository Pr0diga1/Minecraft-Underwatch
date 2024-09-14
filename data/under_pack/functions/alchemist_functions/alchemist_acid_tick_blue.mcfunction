# Store's position of telepot
execute if entity @e[type=potion,tag=acid,tag=uBlue] store result score xposBlueA buffer run data get entity @e[type=potion,tag=acid,tag=uBlue,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=acid,tag=uBlue] store result score yposBlueA buffer run data get entity @e[type=potion,tag=acid,tag=uBlue,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=acid,tag=uBlue] store result score zposBlueA buffer run data get entity @e[type=potion,tag=acid,tag=uBlue,limit=1] Pos[2] 100
