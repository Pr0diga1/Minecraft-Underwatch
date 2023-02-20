#indicate a block was hit
scoreboard players set hit elementalWaterState 1
#change the state
scoreboard players set @s elementalWaterState 1
#summon the marker
execute as @s[team=uRed] run summon marker ~ ~ ~ {Tags:["redElementalWater"]}
execute as @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["blueElementalWater"]}