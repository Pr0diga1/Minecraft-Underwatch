scoreboard players set @s celefull 50
execute at @s[team=uRed] run summon block_display ^-.5 ^1 ^ {Tags:["red","celefull"],block_state:{Name:"minecraft:sea_lantern"}}
execute if entity @s[team=uRed] run data modify entity @e[limit=1,tag=red,tag=celefull] Rotation set from entity @s Rotation

execute at @s[team=uBlue] run summon block_display ^-.5 ^1 ^ {Tags:["blue","celefull"],block_state:{Name:"minecraft:sea_lantern"}}
execute if entity @s[team=uBlue] run data modify entity @e[limit=1,tag=blue,tag=celefull] Rotation set from entity @s Rotation

scoreboard players set @s ability4 100
item replace entity @s[team=uRed] hotbar.1 with barrier[custom_data={"celeswap":1b,"red":1b}] 15 
item replace entity @s[team=uBlue] hotbar.1 with barrier[custom_data={"celeswap":1b,"blue":1b}] 15 