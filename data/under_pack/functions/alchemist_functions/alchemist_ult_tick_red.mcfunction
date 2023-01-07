# Store's position of mustard gas
execute if entity @e[type=potion,tag=mustard_gas,tag=uRed] store result score xposRedU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uRed,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=mustard_gas,tag=uRed] store result score yposRedU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uRed,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=mustard_gas,tag=uRed] store result score zposRedU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uRed,limit=1] Pos[2] 100
