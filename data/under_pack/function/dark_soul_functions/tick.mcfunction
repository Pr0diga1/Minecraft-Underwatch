## Ember
# Gain Ember
execute if score @s ultKills matches 1.. run function under_pack:dark_soul_functions/kill_got



## Lingering Flame
execute if entity @s[team=uBlue] as @e[tag=FlameMarker,tag=uBlue] at @s run function under_pack:dark_soul_functions/linger_orb_tick
execute if entity @s[team=uRed] as @e[tag=FlameMarker,tag=uRed] at @s run function under_pack:dark_soul_functions/linger_orb_tick
