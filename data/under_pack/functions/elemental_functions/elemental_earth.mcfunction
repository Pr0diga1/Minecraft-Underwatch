#set the timer
scoreboard players set @s elementalEarthTimer 11
#remove the bar value
scoreboard players remove @s elementalBar 240
#make the armor stand
execute as @s[team=uRed] positioned ~ ~-1.5 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["redElementalEarth"],ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute as @s[team=uBlue] positioned ~ ~-1.5 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["blueElementalEarth"],ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
