#the marker has existed for another tick
scoreboard players add distance buffer 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return 0

#hits a player
execute if entity @s[team=uBlue] positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=1,dy=1,dz=1,team=uBlue,tag=!sharing] unless score @s class matches 21 run return run tag @s add sharing
execute if entity @s[team=uRed] positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=1,dy=1,dz=1,team=uRed,tag=!sharing] unless score @s class matches 21 run return run tag @s add sharing

#rerun command
execute if entity @s[team=uBlue] unless entity @a[tag=sharing,team=uBlue] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:occultist/share_wounds_raycast
execute if entity @s[team=uRed] unless entity @a[tag=sharing,team=uRed] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:occultist/share_wounds_raycast
