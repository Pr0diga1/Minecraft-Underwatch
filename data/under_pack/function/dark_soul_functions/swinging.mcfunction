# Check if player still has advancement for right clicking
execute if entity @s[advancements={under_pack:swing_zwei=false}] run return 0

# Count down timer
scoreboard players remove @s ability1 1

execute if score @s ability1 matches 7..12 run function under_pack:dark_soul_functions/swing_damage

# if ability1 is more than 0 return and run again next tick
execute if score @s ability1 matches 1.. run return run advancement revoke @s only under_pack:swing_cooldown

# reset cooldown and prepare next tick
scoreboard players reset @s ability1
execute if entity @s[team=uRed] run tag @a[team=uBlue] remove hit_darksoul
execute if entity @s[team=uBlue] run tag @a[team=uRed] remove hit_darksoul

# Revoke advancement for right clicking
advancement revoke @s only under_pack:swing_zwei

execute if entity @s[tag=swinging] run return run tag @s remove swinging
tag @s add swinging
