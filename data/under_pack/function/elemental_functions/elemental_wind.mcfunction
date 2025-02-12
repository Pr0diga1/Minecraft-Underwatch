#Summon wind charge
execute at @s[team=uRed] anchored eyes run summon wind_charge ^ ^ ^0.5 {Tags:["redElementalWind"],acceleration_power:0.04d}
execute at @s[team=uBlue] anchored eyes run summon wind_charge ^ ^ ^0.5 {Tags:["blueElementalWind"],acceleration_power:0.04d}

#remove the bar value
scoreboard players remove @s elementalBar 160
experience add @s -160 points
