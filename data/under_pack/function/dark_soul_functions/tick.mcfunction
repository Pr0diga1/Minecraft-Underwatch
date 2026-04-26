execute as @s[tag=uDead] run return fail

## Ember
# Gain Ember
execute if score @s ultKills matches 1.. run function under_pack:dark_soul_functions/kill_got
# Parrying tick
execute if entity @s[tag=parrying] run function under_pack:dark_soul_functions/parry_tick

# Lingering Flame
execute if entity @s[team=uBlue] as @e[tag=FlameMarker,tag=uBlue] at @s run function under_pack:dark_soul_functions/linger_orb_tick
execute if entity @s[team=uRed] as @e[tag=FlameMarker,tag=uRed] at @s run function under_pack:dark_soul_functions/linger_orb_tick

# Power within tick
execute if score @s ability4 matches 1.. run function under_pack:dark_soul_functions/power_within_tick
execute if score @s ability4 matches ..0 run function under_pack:dark_soul_functions/power_within_end

## Visualize ember abilities
