#summon the new arrow
execute at @s[tag=red] run summon arrow ~ ~ ~ {damage:0.1d,crit:0b,Tags:["scidam", "Red"],item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16768257,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:50,show_particles:0b}]}}}}
execute at @s[tag=blue] run summon arrow ~ ~ ~ {damage:0.1d,crit:0b,Tags:["scidam", "Blue"],item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16768257,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:50,show_particles:0b}]}}}}
#summon arrow ~ ~ ~ {crit:0b,Color:16768257,damage:0.01d,Tags:["scidam"],CustomPotionEffects:[{Id:10,Amplifier:4b,Duration:30,ShowParticles:0b}]}

#give it motion
data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Motion set from entity @s Motion
#set its owner
data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Owner set from entity @s Owner
#kill the old arrow
kill @s