#the marker has existed for another tick
scoreboard players add @s movement 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return fail

#particle
particle crit ~ ~ ~ 0 0 0 0 1 force @a

#hits a player
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest,gamemode=adventure] run return run function under_pack:miku/rifle_damage
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest,gamemode=adventure] run return run function under_pack:miku/rifle_damage


#rerun command
execute if score @s movement matches ..100 positioned ^ ^ ^.5 run function under_pack:miku/rifle_raycast
