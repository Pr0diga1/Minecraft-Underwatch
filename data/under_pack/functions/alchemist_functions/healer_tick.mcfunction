# Track how long its been out here
scoreboard players add @s ability3 1

# Give regen
execute if entity @s[tag=uBlue] run effect give @a[team=uBlue,distance=..3,predicate=!under_pack:alch_regen_check] regeneration 2 2 true
execute if entity @s[tag=uRed] run effect give @a[team=uRed,distance=..3,predicate=!under_pack:alch_regen_check] regeneration 2 2 true

# Particle
particle ambient_entity_effect ~ ~ ~ 1 0.1 2 0 20 normal

# Kills once 5 seconds have passed
execute if score @s ability3 matches 100.. run kill @s