#detects when there is a snowball to summon the marker
execute at @e[predicate=under_pack:celestial/lunardropblue] unless entity @e[tag=blue,tag=celetrack] run summon marker ~ ~ ~ {Tags:["blue","celetrack"]}
#rides the marker on the snowball
ride @n[tag=celetrack,tag=blue] mount @n[predicate=under_pack:celestial/lunardropblue]
#damages when snowball is dead at the marker
execute as @e[tag=celetrack,tag=blue] at @s unless entity @e[predicate=under_pack:celestial/lunardropblue] positioned ~ ~-.5 ~ as @a[team=uRed,distance=..3] run damage @s 4.0 player_attack by @a[team=uBlue,scores={class=20},limit=1]
#particles
execute as @e[tag=celetrack,tag=blue] at @s unless entity @e[predicate=under_pack:celestial/lunardropblue] positioned ~ ~-.5 ~ run function under_pack:celestial_functions/moon/dropparticle
#kills the marker
execute as @e[tag=celetrack,tag=blue] unless entity @e[predicate=under_pack:celestial/lunardropblue] run kill @s

#removes 1 from cooldown
execute if score @s ability3 matches 1.. unless entity @e[predicate=under_pack:celestial/lunardropblue] run scoreboard players remove @s ability3 1
execute if score @s ability3 matches 1 if entity @e[predicate=under_pack:celestial/lunardropblue] run scoreboard players remove @s ability3 1
#sets cooldown when you throw
execute if score @s ability3 matches 0 unless entity @s[nbt={Inventory:[{Slot:0b}]}] run scoreboard players set @s ability3 22
#gives snowball at end of cooldown
execute if score @s ability3 matches 1 run item replace entity @s hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,blue:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}']

#replace empty with barrier
execute if entity @e[predicate=under_pack:celestial/lunardropblue] run item replace entity @s hotbar.0 with barrier[custom_data={"celeswap":1b,"blue":1b}]
