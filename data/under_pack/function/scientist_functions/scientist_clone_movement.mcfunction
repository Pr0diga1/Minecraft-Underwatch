#summon new arrow
execute at @s run summon arrow ~ ~ ~ {damage:2.9d,crit:0b,Tags:["sciMove"],item:{id:"minecraft:tipped_arrow",components:{"minecraft:potion_contents":{custom_color:-1,custom_effects:[{id:"minecraft:levitation",amplifier:4b,duration:30,show_particles:0b}]}}}}

#summon arrow ~ ~ ~ {crit:0b,Color:-1,damage:2.9d,Tags:["sciMove"],CustomPotionEffects:[{Id:25,Amplifier:4b,Duration:30}]}
#set its motion
execute at @s run data modify entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Motion set from entity @s Motion
execute at @s run data modify entity @e[type=arrow,tag=sciMove,limit=1,sort=nearest] Owner set from entity @s Owner

#give owner tag
execute as @s on origin run tag @s add rocketPassenger

#put owner on new arrow
execute at @s run ride @a[tag=rocketPassenger,limit=1,sort=nearest] mount @e[type=arrow,tag=sciMove,limit=1,sort=nearest]

#remove owners tag
tag @a remove rocketPassenger

#kill the old arrow
kill @s