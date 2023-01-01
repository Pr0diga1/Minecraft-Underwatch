#summon new arrow
execute at @s run summon arrow ~ ~ ~ {crit:0b,Color:2327041,damage:0.01d,Tags:["SciMove"],CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:40},{Id:8,Amplifier:4b,Duration:40}]}
#set its motion
data modify entity @e[type=arrow,tag=SciMove,limit=1,sort=nearest] Motion set from entity @s Motion
#set its owner
execute if entity @s[tag=red] run data modify entity @e[type=arrow,tag=SciMove,limit=1,sort=nearest] Owner set from entity @a[team=uBlue,limit=1,sort=nearest] UUID
execute if entity @s[tag=blue] run data modify entity @e[type=arrow,tag=SciMove,limit=1,sort=nearest] Owner set from entity @a[team=uRed,limit=1,sort=nearest] UUID
#kill the old arrow
kill @s