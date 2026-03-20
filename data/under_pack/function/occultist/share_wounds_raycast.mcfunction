#the marker has existed for another tick
scoreboard players add distance buffer 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return 0

particle dust{color:[0.0,0.0,0.0],scale:1} ^ ^ ^1 0 0 0 0 1 force @s

#hits a player
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @p[dx=2,dy=2,dz=2,team=uBlue,tag=!sharing] unless score @s class matches 21 run return run tag @s add sharing
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @p[dx=2,dy=2,dz=2,team=uRed,tag=!sharing] unless score @s class matches 21 run return run tag @s add sharing

#rerun command
execute if entity @s[team=uBlue] unless entity @a[tag=sharing,team=uBlue] if score distance buffer matches ..40 positioned ^ ^ ^.5 run function under_pack:occultist/share_wounds_raycast
execute if entity @s[team=uRed] unless entity @a[tag=sharing,team=uRed] if score distance buffer matches ..40 positioned ^ ^ ^.5 run function under_pack:occultist/share_wounds_raycast
