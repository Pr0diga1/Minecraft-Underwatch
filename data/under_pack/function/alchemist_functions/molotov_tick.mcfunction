# Kills once 5 seconds have passed
execute if score @s ability4 matches 80.. run return run kill @s

# Track how long its been out here
scoreboard players add @s ability4 1

# Give regen
execute if entity @s[tag=uBlue] as @a[team=uRed,distance=..3] run function under_pack:alchemist_functions/m_damage_blue
execute if entity @s[tag=uRed] as @a[team=uBlue,distance=..3] run function under_pack:alchemist_functions/m_damage_red
execute if entity @s[tag=uBlue] as @a[team=uBlue,scores={class=1},distance=..3] run damage @s 1 magic
execute if entity @s[tag=uRed] as @a[team=uRed,scores={class=1},distance=..3] run damage @s 1 magic

# Particle

# Particle
particle flame ~ ~ ~ 2 0.15 2 0 12 force
particle smoke ~ ~ ~ 2 0.15 2 0 12 force
particle lava ~ ~ ~ 2 0.15 2 0 6 force