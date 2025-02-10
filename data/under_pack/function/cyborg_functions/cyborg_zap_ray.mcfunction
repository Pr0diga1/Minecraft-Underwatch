#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit cyborgtimer 1

#if it hits a player, run a function as that player
execute if entity @s[team=uRed] positioned ~ ~ ~ as @a[dx=0,team=uBlue] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:cyborg_functions/cyborg_zap_hit
execute if entity @s[team=uBlue] positioned ~ ~ ~ as @a[dx=0,team=uRed] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:cyborg_functions/cyborg_zap_hit
#particle
particle electric_spark ~ ~ ~ 0 0 0 0 2 force

#add 1 to the distance
scoreboard players remove distance cyborgtimer 1
#rerun
execute if score hit cyborgtimer matches 0 if score distance cyborgtimer matches 1.. positioned ^ ^ ^0.25 run function under_pack:cyborg_functions/cyborg_zap_ray
