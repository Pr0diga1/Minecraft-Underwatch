scoreboard players set @s ability1 199
scoreboard players set @s movement 79
execute if entity @s[team=uBlue] run kill @e[tag=lumber_giant,tag=blue]
execute if entity @s[team=uBlue] run kill @e[tag=lumber_ult,tag=blue]
execute if entity @s[team=uRed] run kill @e[tag=lumber_giant,tag=red]
execute if entity @s[team=uRed] run kill @e[tag=lumber_ult,tag=red]
execute if entity @s[team=uBlue] run kill @e[type=armor_stand,tag=lumberaxemove,tag=blue]
execute if entity @s[team=uBlue] run kill @e[type=armor_stand,tag=lumberaxestill,tag=blue]
execute if entity @s[team=uRed] run kill @e[type=armor_stand,tag=lumberaxemove,tag=red]
execute if entity @s[team=uRed] run kill @e[type=armor_stand,tag=lumberaxestill,tag=red]