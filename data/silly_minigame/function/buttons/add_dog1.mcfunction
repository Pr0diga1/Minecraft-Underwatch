summon wolf -123.00 84.00 -1003.5 {Tags:["player1","helper"]}
execute as @n[type=wolf,tag=player2,tag=!helper] at @s run damage @n[type=wolf,tag=player1,tag=helper] 0 generic by @s
scoreboard players remove @s dogPoints 1
scoreboard players add Pot dogPoints 1