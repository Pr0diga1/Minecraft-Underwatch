#summon new arrow
execute if entity @s[tag=blue] at @s run summon arrow ~ ~ ~ {crit:0b,damage:0.01d,Tags:["sciBolt","blue"]}
execute if entity @s[tag=red] at @s run summon arrow ~ ~ ~ {crit:0b,damage:0.01d,Tags:["sciBolt","red"]}
#create a marker that will follow the arrow
execute if entity @s[tag=red] at @s run summon marker ~ ~ ~ {Tags:["sciLightningRed"]} 
execute if entity @s[tag=blue] at @s run summon marker ~ ~ ~ {Tags:["sciLightningBlue"]} 
#set its motion
data modify entity @e[type=arrow,tag=sciBolt,limit=1,sort=nearest] Motion set from entity @s Motion
#set its owner
data modify entity @e[type=arrow,tag=sciBolt,limit=1,sort=nearest] Owner set from entity @s Owner
#kill the old arrow
kill @s