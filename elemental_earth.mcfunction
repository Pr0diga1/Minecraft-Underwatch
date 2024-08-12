#remove the bar value
scoreboard players remove @s elementalBar 200
#make the armor stand
execute as @s[team=uRed] positioned ~ ~-1.5 ~ run summon block_display ^ ^ ^1 {NoGravity:1b,Silent:1b,Tags:["redElementalEarth"],block_state:{Name:"minecraft:cobblestone"}}
execute as @s[team=uBlue] positioned ~ ~-1.5 ~ run summon block_display ^ ^ ^1 {NoGravity:1b,Silent:1b,Tags:["blueElementalEarth"],block_state:{Name:"minecraft:cobblestone"}}
#set the timer
execute as @s[team=uRed] at @s run scoreboard players set @e[type=block_display,limit=1,sort=nearest,tag=redElementalEarth] elementalEarthTimer 11
execute as @s[team=uBlue] at @s run scoreboard players set @e[type=block_display,limit=1,sort=nearest,tag=blueElementalEarth] elementalEarthTimer 11
scoreboard players reset @s reset
