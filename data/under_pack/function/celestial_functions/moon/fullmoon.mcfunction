scoreboard players set @s celefull 200
execute at @s[team=uRed] run summon marker ~ ~1 ~ {Tags:["red","celefull"]}
execute if entity @s[team=uRed] run data modify entity @e[limit=1,tag=red,tag=celefull] Rotation set from entity @s Rotation

execute at @s[team=uBlue] run summon marker ~ ~1 ~ {Tags:["blue","celefull"]}
execute if entity @s[team=uBlue] run data modify entity @e[limit=1,tag=blue,tag=celefull] Rotation set from entity @s Rotation

scoreboard players set @s ability4 200
item replace entity @s hotbar.1 with barrier 15