#summon new arrow
execute at @s run summon arrow ~ ~ ~ {crit:0b,Color:-1,damage:1.5d,Tags:["sciMove"],CustomPotionEffects:[{Id:25,Amplifier:4b,Duration:30}]}
#set its motion
execute at @s run data modify entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Motion set from entity @s Motion
execute at @s run data modify entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Owner set from entity @s Owner
#double all motion stats
#x
execute store result score sciRocket buffer run data get entity @s Motion[0] 1000
execute at @s store result entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Motion[0] double 0.002 run scoreboard players get sciRocket buffer
#y
execute store result score sciRocket buffer run data get entity @s Motion[1] 1000
execute at @s store result entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Motion[1] double 0.002 run scoreboard players get sciRocket buffer
#z
execute store result score sciRocket buffer run data get entity @s Motion[2] 1000
execute at @s store result entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Motion[2] double 0.002 run scoreboard players get sciRocket buffer

#kill the old arrow
kill @s