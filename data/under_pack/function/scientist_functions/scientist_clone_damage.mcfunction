#summon the new arrow
execute at @s run summon arrow ~ ~ ~ {damage:0.1d,crit:0b,Tags:["scidam"],item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16768257,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:40,show_particles:0b}]}}}}
#summon arrow ~ ~ ~ {crit:0b,Color:16768257,damage:0.01d,Tags:["scidam"],CustomPotionEffects:[{Id:10,Amplifier:4b,Duration:30,ShowParticles:0b}]}

#give it motion
execute at @s run data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute at @s run data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Motion set from entity @s Motion
#set its owner
execute if entity @s[tag=red] run data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Owner set from entity @a[team=uRed,limit=1,sort=nearest] UUID
execute if entity @s[tag=blue] run data modify entity @e[type=arrow,tag=scidam,limit=1,sort=nearest] Owner set from entity @a[team=uBlue,limit=1,sort=nearest] UUID
#kill the old arrow
kill @s