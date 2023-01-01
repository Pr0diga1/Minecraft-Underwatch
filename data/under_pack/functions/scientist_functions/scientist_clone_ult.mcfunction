#summon new arrow
execute at @s[tag=blue] run summon arrow ~ ~ ~ {crit:0b,damage:5d,Tags:["sciSmoke","blue"]}
execute at @s[tag=red] run summon arrow ~ ~ ~ {crit:0b,damage:5d,Tags:["sciSmoke","red"]}
#set its motion
execute at @s run data modify entity @e[type=arrow,tag=sciSmoke,limit=1,sort=nearest] Motion set from entity @s Motion
#set its owner
execute at @s run data modify entity @e[type=arrow,tag=sciSmoke,limit=1,sort=nearest] Owner set from entity @s Owner
#create a marker that will follow the arrow
execute if entity @s[tag=red] at @s run summon marker ~ ~ ~ {Tags:["sciSmokeRed"]} 
execute if entity @s[tag=blue] at @s run summon marker ~ ~ ~ {Tags:["sciSmokeBlue"]} 
#kill the old arrow
kill @s