#Summon wind charge
execute at @s[team=uRed] anchored eyes run summon wind_charge ^ ^ ^0.5 {Tags:["redElementalWind"],acceleration_power:0.09d}
execute at @s[team=uBlue] anchored eyes run summon wind_charge ^ ^ ^0.5 {Tags:["blueElementalWind"],acceleration_power:0.09d}

#remove the bar value
scoreboard players remove @s elementalBar 140
experience add @s -140 points
