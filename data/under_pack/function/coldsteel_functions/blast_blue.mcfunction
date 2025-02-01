
execute at @s as @a[team=uRed,distance=..3] run damage @s 4 player_attack by @a[team=uBlue,limit=1,scores={class=18}]
execute at @s run function under_pack:coldsteel_functions/particle

scoreboard players set @s ability4 200