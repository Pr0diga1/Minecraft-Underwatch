# Track how long its been out here
scoreboard players add @s ability3 1

# Give blindness
execute if entity @s[tag=uBlue] run effect give @a[team=uRed,distance=..5,predicate=!under_pack:alch_blindness_check] blindness 5 0 true
execute if entity @s[tag=uRed] run effect give @a[team=uBlue,distance=..5,predicate=!under_pack:alch_blindness_check] blindness 5 0 true
# Give poison
execute if entity @s[tag=uBlue] run effect give @a[team=uRed,distance=..5,predicate=!under_pack:alch_poison_check] poison 5 0 true
execute if entity @s[tag=uRed] run effect give @a[team=uBlue,distance=..5,predicate=!under_pack:alch_poison_check] poison 5 0 true

# Particle
particle dust 0.77734375 0.66796875 0.125 4 ~ ~ ~ 2 2 2 0 5 normal

# Kills once 10 seconds have passed
execute if score @s ability3 matches 200.. run kill @s