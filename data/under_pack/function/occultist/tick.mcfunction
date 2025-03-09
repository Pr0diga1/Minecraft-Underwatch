# Eye attack tick
execute as @e[tag=EyeBeam] at @s run function under_pack:occultist/eye_tick
execute as @e[tag=EyeBeam] at @s run function under_pack:occultist/eye_tick
execute as @e[tag=EyeBeam] at @s run function under_pack:occultist/eye_tick
execute as @e[tag=EyeBeam] at @s run function under_pack:occultist/eye_tick

# Tick down eye cooldown
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

# Tick as everyone hit by vulnerable
execute as @a[tag=vulnerable] run function under_pack:occultist/vulnerable_enemy_tick

# Tick down if someone has regen to go through from share wounds
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
execute if score @s ability2 matches 0 run function under_pack:occultist/share_wounds_clear

# Heal ability scoreboard checks
execute if score @s damageTaken matches 1.. run function under_pack:occultist/damage_start_timer
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1
execute if score @s ability3 matches 0 run function under_pack:occultist/healing_start

execute if entity @s[tag=occult_regen,predicate=!under_pack:occultist_regen] run effect give @s regeneration 1 2