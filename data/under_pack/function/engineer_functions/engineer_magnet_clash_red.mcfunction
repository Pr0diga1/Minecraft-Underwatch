damage @s 10 player_attack by @a[team=uRed,scores={class=3},limit=1]
tag @s remove magneticred
scoreboard players reset red engineermagnet
advancement revoke @s only under_pack:magnet

scoreboard players set @a[team=uRed,scores={class=3},limit=1] ability4 300
item replace entity @a[team=uRed,scores={class=3},limit=1] hotbar.7 with barrier 10