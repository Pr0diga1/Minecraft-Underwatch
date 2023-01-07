# Store's position of mustard gas
execute if entity @e[type=potion,tag=mustard_gas,tag=uBlue] store result score xposBlueU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uBlue,limit=1] Pos[0] 100
execute if entity @e[type=potion,tag=mustard_gas,tag=uBlue] store result score yposBlueU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uBlue,limit=1] Pos[1] 100
execute if entity @e[type=potion,tag=mustard_gas,tag=uBlue] store result score zposBlueU buffer run data get entity @e[type=potion,tag=mustard_gas,tag=uBlue,limit=1] Pos[2] 100
