summon wolf -123.00 84.00 -1012.5 {Tags:["player2","helper"]}
execute as @n[type=wolf,tag=player1,tag=!helper] at @s run damage @n[type=wolf,tag=player2,tag=helper] 0 generic by @s
scoreboard players remove @s dogPoints 1
scoreboard players add Pot dogPoints 1