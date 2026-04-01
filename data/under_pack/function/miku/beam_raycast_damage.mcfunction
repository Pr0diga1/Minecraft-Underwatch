#the marker has existed for another tick
scoreboard players add @s movement 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run return fail

#particle
particle electric_spark ~ ~ ~ 0 0 0 1 1 force @a
particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force @a
particle dust{color:[0.400,0.900,1.000],scale:1} ~ ~ ~ 0 0 0 0 0 normal

#hits a player
execute as @s[team=uRed] positioned ~-.75 ~-.75 ~-.75 as @a[dx=0,team=uBlue,limit=1,sort=nearest,gamemode=adventure] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] run return run function under_pack:miku/beam_damage
execute as @s[team=uBlue] positioned ~-.75 ~-.75 ~-.75 as @a[dx=0,team=uRed,limit=1,sort=nearest,gamemode=adventure] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] run return run function under_pack:miku/beam_damage

#rerun command
execute if score @s movement matches ..100 positioned ^ ^ ^.5 run function under_pack:miku/beam_raycast_damage
