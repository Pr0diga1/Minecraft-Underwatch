#damage when snowball hits
execute at @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] positioned ~ ~-1 ~ as @a[team=uBlue,distance=..2.2] run damage @s 3.5 player_attack by @a[team=uRed,scores={class=20},limit=1]
#kill the snowball once damage occurs
execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] at @s positioned ~ ~-1 ~ if entity @a[team=uBlue,distance=..2.2] run kill @s
#if on cooldown and less than 2, subtract from cooldown
execute if score @s ability3 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:snowball",count:2,Slot:0b,components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}]}] run scoreboard players remove @s ability3 1
#if cooldown up and there is a snowball add one to amount
execute if score @s ability3 matches 1 if entity @s[nbt={Inventory:[{Slot:0b}]}] run item replace entity @s hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,red:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}'] 2
#if cooldown up and no snowball replace the hotbar slot
execute if score @s ability3 matches 1 unless entity @s[nbt={Inventory:[{Slot:0b}]}] run item replace entity @s hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,red:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}']
#when you dont yet have 2 snowballs cooldown
execute if score @s ability3 matches 0 if entity @s[nbt={Inventory:[{Slot:0b}]}] run scoreboard players set @s ability3 21
execute at @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{celedrop:1b,red:1b}}}}] if entity @s[dx=1] run scoreboard players set @s ability3 21