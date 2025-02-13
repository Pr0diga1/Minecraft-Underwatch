#damage when snowball hits
execute at @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] positioned ~ ~-1 ~ as @a[team=uBlue,distance=..1.5] run damage @s 3.5 player_attack by @a[team=uRed,scores={class=20},limit=1]
#kill after hit
execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] at @s positioned ~ ~-1 ~ if entity @a[team=uBlue,distance=..1.5] run kill @s
#removes 1 from cooldown
execute if score @s ability3 matches 1.. unless entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] run scoreboard players remove @s ability3 1
execute if score @s ability3 matches 1 if entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] run scoreboard players remove @s ability3 1
#sets cooldown when you throw
execute if score @s ability3 matches 0 unless entity @s[nbt={Inventory:[{Slot:0b}]}] run scoreboard players set @s ability3 22
#gives snowball at end of cooldown
execute if score @s ability3 matches 1 run item replace entity @s hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,red:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}']

#replace empty with barrier
execute if entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] run item replace entity @s hotbar.0 with barrier[custom_data={"celeswap":1b,"red":1b}]
