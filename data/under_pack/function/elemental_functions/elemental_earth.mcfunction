#remove the bar value
scoreboard players remove @s elementalBar 220
experience add @s -220 points
#make the armor stand
execute as @s[team=uRed] positioned ~ ~-1 ~ run summon block_display ^ ^ ^1 {NoGravity:1b,Silent:1b,Tags:["redElementalEarth"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cobblestone"}}
execute as @s[team=uBlue] positioned ~ ~-1 ~ run summon block_display ^ ^ ^1 {NoGravity:1b,Silent:1b,Tags:["blueElementalEarth"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cobblestone"}}
#set the timer
execute as @s[team=uRed] at @s run scoreboard players set @e[type=block_display,limit=1,sort=nearest,tag=redElementalEarth] elementalEarthTimer 11
execute as @s[team=uBlue] at @s run scoreboard players set @e[type=block_display,limit=1,sort=nearest,tag=blueElementalEarth] elementalEarthTimer 11
