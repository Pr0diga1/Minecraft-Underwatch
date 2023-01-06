# Track how long its been out here
scoreboard players add @s ability3 1

# Give regen
execute if entity @s[tag=uBlue] run effect give @a[team=uBlue,distance=..4] regeneration 2 3 true
execute if entity @s[tag=uRed] run effect give @a[team=uRed,distance=..4] regeneration 2 3 true

# Particle
particle ambient_entity_effect ~ ~ ~ 4 0.2 4 0 10 normal

# Kills once 5 seconds have passed
execute if score @s ability3 matches 100.. run kill @s