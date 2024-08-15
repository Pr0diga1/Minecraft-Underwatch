scoreboard players operation @p[tag=player1] dogPoints += Pot dogPoints
kill @e[type=wolf]
scoreboard players set Pot dogPoints 0
scoreboard players set dogActive buffer 0
tp @a[tag=player1] -123.00 88.00 -1001.50
tp @a[tag=player2] -123.00 88.00 -1001.50
tag @a remove player1
tag @a remove player2
