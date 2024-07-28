#summon new arrow
execute at @s[tag=blue] run summon arrow ~ ~ ~ {damage:2d,crit:0b,Tags:["sciBoltl","blue"],item:{id:"minecraft:tipped_arrow",components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:1b,duration:2,show_particles:0b}]}}}}

#summon arrow ~ ~ ~ {crit:0b,damage:2d,Tags:["sciBolt","blue"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}
execute at @s[tag=red] run summon arrow ~ ~ ~ {damage:2d,crit:0b,Tags:["sciBoltl","red"],item:{id:"minecraft:tipped_arrow",components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:1b,duration:2,show_particles:0b}]}}}}
#summon arrow ~ ~ ~ {crit:0b,damage:2d,Tags:["sciBolt","red"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}


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

