## Ember
# Gain Ember
execute if score @s ultKills matches 1.. run function under_pack:dark_soul_functions/kill_got

## Zweihander ability
# Tp rig to player
execute if entity @n[tag=aj.animations.root] run tp @n[tag=aj.animations.root] ~ ~1.4 ~ ~ ~
# Check if has tag and advancement
execute if entity @s[tag=swing_started,advancements={under_pack:swing_zwei=false}] run function under_pack:dark_soul_functions/swing_end

## Estus
# Use estus
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1

## Immolation
execute if entity @s[tag=immolate] run scoreboard players add @s ability2 1
execute if entity @s[tag=immolate] run effect give @s slowness infinite
execute if entity @s[tag=!immolate] run effect clear @s slowness
execute if entity @s[tag=immolate,scores={ability2=90..}] run function under_pack:dark_soul_functions/explode_immolation

## Lingering Flame
execute if entity @s[team=uBlue] as @e[tag=FlameMarker,tag=uBlue] at @s run function under_pack:dark_soul_functions/linger_orb_tick
execute if entity @s[team=uRed] as @e[tag=FlameMarker,tag=uRed] at @s run function under_pack:dark_soul_functions/linger_orb_tick
