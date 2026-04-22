#summon new arrow
execute at @s[tag=blue] run summon arrow ~ ~ ~ {damage:1d,crit:0b,Tags:["sciBoltl","Blue"],item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{custom_color:16768257,custom_effects:[{id:"minecraft:luck",amplifier:1,duration:2,show_particles:0b}]}}}}

#summon arrow ~ ~ ~ {crit:0b,damage:2d,Tags:["sciBolt","blue"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}
execute at @s[tag=red] run summon arrow ~ ~ ~ {damage:1.0d,crit:0b,Tags:["sciBoltl","Red"],item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16768257,custom_effects:[{id:"minecraft:luck",amplifier:1,duration:2,show_particles:0b}]}}}}
#summon arrow ~ ~ ~ {crit:0b,damage:2d,Tags:["sciBolt","red"],CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:2}]}

#set its motion

data modify entity @e[type=arrow,tag=sciBoltl,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=arrow,tag=sciBoltl,limit=1,sort=nearest] Motion set from entity @s Motion

#set its owner
data modify entity @e[type=arrow,tag=sciBoltl,limit=1,sort=nearest] Owner set from entity @s Owner

#create a marker that will follow the arrow
execute if entity @s[tag=red] run summon marker ~ ~ ~ {Tags:["sciLightningRed"]} 
execute if entity @s[tag=blue] run summon marker ~ ~ ~ {Tags:["sciLightningBlue"]} 

#kill the old arrow
kill @s