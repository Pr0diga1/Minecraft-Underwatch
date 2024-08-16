tp @p[tag=player1] -130.00 84.00 -1008.00
tp @p[tag=player2] -116.00 84.00 -1008.00

summon wolf -123.00 84.00 -1003.5 {Health:20f,Tags:["player1"],attributes:[{id:"minecraft:generic.max_health",base:20}]}
summon wolf -123.00 84.00 -1012.5 {Health:20f,Tags:["player2"],attributes:[{id:"minecraft:generic.max_health",base:20}]}

scoreboard players set Pot dogPoints 1
scoreboard players set dogActive buffer 1
schedule function silly_minigame:anger 10t

execute as @a[tag=player1] if entity @s[tag=!given_points] run function silly_minigame:give_points
execute as @a[tag=player2] if entity @s[tag=!given_points] run function silly_minigame:give_points