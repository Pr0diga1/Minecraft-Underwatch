#the marker has existed for another tick
scoreboard players add distance buffer 1
say pew pew OwO

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return 0

#hits a player
execute if entity @s[team=uBlue] positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,team=uRed,tag=!vulnerable] run return run function under_pack:occultist/vulnerable_triggered
execute if entity @s[team=uRed] positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=0,dz=0,team=uBlue,tag=!vulnerable] run return run function under_pack:occultist/vulnerable_triggered

#rerun command
execute if entity @s[team=uBlue] unless entity @a[tag=vulnerable,team=uBlue] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:occultist/vulnerable_raycast
execute if entity @s[team=uRed] unless entity @a[tag=vulnerable,team=uRed] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:occultist/vulnerable_raycast
