#the marker has existed for another tick
scoreboard players remove @s celetidal 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players reset @s celetidal
#hits a player
execute if entity @s[team=uRed] unless entity @a[tag=2bpr] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest,tag=!me] run playsound entity.arrow.hit_player master @s
execute if entity @s[team=uRed] unless entity @a[tag=2bpr] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest,tag=!me] run tag @s add 2bpr

execute if entity @s[team=uBlue] unless entity @a[tag=2bpb] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest,tag=!me] run playsound entity.arrow.hit_player master @s
execute if entity @s[team=uBlue] unless entity @a[tag=2bpb] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest,tag=!me] run tag @s add 2bpb

particle wax_off ~ ~ ~ 0 0 0 1 1 force @s

#rerun command
execute if score @s celetidal matches 1.. positioned ^ ^ ^.4 run function under_pack:celestial_functions/moon/tidalcast