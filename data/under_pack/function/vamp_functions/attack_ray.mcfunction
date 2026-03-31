#the marker has existed for another tick
scoreboard players add distance vampattack 1

#kill the marker if its in a block or has existed for 4 seconds
#execute unless block ~ ~ ~ #under_pack:non_solid run return fail

#particle
particle dust{color:[1,0,0],scale:0.9} ~ ~ ~ 0 0 0 0 1 force @a

#hits a player
execute if entity @s[team=uRed] as @a[dx=0,team=uBlue,limit=1,sort=nearest,gamemode=adventure] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:vamp_functions/attack_ray_hit
execute if entity @s[team=uBlue] as @a[dx=0,team=uRed,limit=1,sort=nearest,gamemode=adventure] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:vamp_functions/attack_ray_hit

#rerun command
execute if score distance vampattack matches ..17 positioned ^ ^ ^.2 run function under_pack:vamp_functions/attack_ray
