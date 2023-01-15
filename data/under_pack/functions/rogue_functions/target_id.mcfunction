# Incriment id
execute if entity @s[team=uBlue] run scoreboard players add IDRed constant 1
execute if entity @s[team=uRed] run scoreboard players add IDBlue constant 1

# Assign's target id
execute if entity @s[team=uBlue] store result score @s rogueUltTimingBuffer run scoreboard players get IDRed constant
execute if entity @s[team=uRed] store result score @s rogueUltTimingBuffer run scoreboard players get IDBlue constant

