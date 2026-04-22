#the marker has existed for another tick
scoreboard players add @s movement 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return fail

execute if entity @e[type=falling_block,dx=0] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[type=falling_block,dx=0] run kill @s

#particle
particle crit ~ ~ ~ 0 0 0 0 1 force @a

#hits a player
execute as @s[team=uRed] positioned ~-.37 ~-.37 ~-.37 as @a[dx=0,team=uBlue,limit=1,sort=nearest,gamemode=adventure] positioned ~0.25 ~0.25 ~0.25 if entity @s[dx=0] run return run function under_pack:miku/rifle_damage
execute as @s[team=uBlue] positioned ~-.37 ~-.37 ~-.37 as @a[dx=0,team=uRed,limit=1,sort=nearest,gamemode=adventure] positioned ~0.25 ~0.25 ~0.25 if entity @s[dx=0] run return run function under_pack:miku/rifle_damage

#rerun command
execute if score @s movement matches ..20 positioned ^ ^ ^.5 run function under_pack:miku/rifle_raycast
