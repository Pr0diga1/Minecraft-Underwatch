#summon new arrow
execute at @s[tag=blue] run summon arrow ~ ~ ~ {crit:0b,damage:0.01d,Tags:["sciBolt","blue"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}
execute at @s[tag=red] run summon arrow ~ ~ ~ {crit:0b,damage:0.01d,Tags:["sciBolt","red"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}

#remove colored particles from lightning arrows
execute as @e[type=arrow,tag=sciBolt] run data merge entity @s {Color:-1}
#set its motion

execute at @s run data modify entity @e[type=arrow,tag=sciBolt,limit=1,sort=nearest] Motion set from entity @s Motion

#set its owner
execute at @s run data modify entity @e[type=arrow,tag=sciBolt,limit=1,sort=nearest] Owner set from entity @s Owner

#create a marker that will follow the arrow
execute if entity @s[tag=red] at @s run summon marker ~ ~ ~ {Tags:["sciLightningRed"]} 
execute if entity @s[tag=blue] at @s run summon marker ~ ~ ~ {Tags:["sciLightningBlue"]} 

#kill the old arrow
kill @s

