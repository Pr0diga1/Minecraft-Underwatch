#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit vampray 1
#if it hits a player, run a function as that player
#execute if score hit vampray matches 0 positioned ~-.64 ~-.8 ~-.64 as @e[dx=0,sort=nearest,tag=!vampdontsuck] run say i hat ethis

execute if score hit vampray matches 0 if entity @s[team=uBlue] positioned ~-0.42 ~-.8 ~-0.42 as @a[team=uRed,dx=0,sort=nearest,tag=!vampdontsuck] at @s positioned ~-0.69 ~-.69 ~-0.69 if entity @s[dx=0] run function under_pack:vamp_functions/suck_hit
execute if score hit vampray matches 0 if entity @s[team=uRed] positioned ~-0.42 ~-.8 ~-0.42 as @a[team=uBlue,dx=0,sort=nearest,tag=!vampdontsuck] at @s positioned ~-0.69 ~-.69 ~-0.69 if entity @s[dx=0] run function under_pack:vamp_functions/suck_hit

#add 1 to the distance
scoreboard players add distance vampray 1
#particles
#execute if block ~ ~ ~ #under_pack:non_solid run particle bubble_pop ^ ^-.8 ^ 0.15 0.05 0.15 0 1
execute if block ~ ~ ~ #under_pack:non_solid run particle dust{color:[0.239,0.235,0.184],scale:.2} ^ ^-.5 ^ .1 .1 .1 5 1 normal
execute if entity @s[team=uRed] if block ~ ~ ~ #under_pack:non_solid if entity @a[team=uBlue,tag=vampsucked] run particle dust{color:[0.831,0.000,0.000],scale:1} ^ ^-.5 ^ .2 .2 .2 5 1 normal
execute if entity @s[team=uBlue] if block ~ ~ ~ #under_pack:non_solid if entity @a[team=uRed,tag=vampsucked] run particle dust{color:[0.831,0.000,0.000],scale:1} ^ ^-.5 ^ .2 .2 .2 5 1 normal


#teleport

#rerun command
execute if score hit vampray matches 0 if score distance vampray matches ..60 positioned ^ ^ ^0.1 run function under_pack:vamp_functions/suck_ray