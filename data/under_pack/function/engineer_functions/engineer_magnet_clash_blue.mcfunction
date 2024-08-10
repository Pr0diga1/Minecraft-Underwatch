damage @s 8 player_attack by @a[team=uBlue,scores={class=3},limit=1]
tag @s remove magneticblue
scoreboard players reset blue engineermagnet
advancement revoke @s only under_pack:magnet
scoreboard players set @a[team=uBlue,scores={class=3},limit=1] ability4 300
item replace entity @a[team=uBlue,scores={class=3},limit=1] hotbar.7 with barrier 10