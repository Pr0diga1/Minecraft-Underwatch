tp @p[tag=player1] -130.00 84.00 -1008.00
tp @p[tag=player2] -116.00 84.00 -1008.00

summon wolf -123.00 84.00 -1003.5 {Health:20f,Tags:["player1"],attributes:[{id:"minecraft:generic.max_health",base:20}]}
summon wolf -123.00 84.00 -1012.5 {Health:20f,Tags:["player2"],attributes:[{id:"minecraft:generic.max_health",base:20}]}

scoreboard players set Pot dogPoints 1
scoreboard players set dogActive buffer 1
schedule function silly_minigame:anger 10t
