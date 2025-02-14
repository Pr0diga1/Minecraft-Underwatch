# Eye attack tick
execute as @e[tag=EyeBeam] at @s run function under_pack:occultist/eye_tick

# Tick down eye cooldown
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

# Tick as everyone hit by vulnerable
execute as @a[tag=vulnerable] run function under_pack:occultist/vulnerable_enemy_tick

