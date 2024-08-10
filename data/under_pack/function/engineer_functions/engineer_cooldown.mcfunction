#wall ability 1
execute if score @s ability1 matches 120 run item replace entity @s hotbar.4 with barrier[minecraft:custom_name='{"text":"Wall on Cooldown"}'] 6
item modify entity @s hotbar.4 under_pack:engineer/wall
execute if score @s ability1 matches 1 run scoreboard players set @s engineerWallBuffer -1

#healies ability2
execute if score @s ability2 matches 1 if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_model_data=3,custom_data={enginedrug:1b,red:1b}] 1
execute if score @s ability2 matches 1 if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_model_data=3,custom_data={enginedrug:1b,blue:1b}] 1
execute if score @s ability2 matches 1.. run experience add @s 12 points
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1

#wrench ability 3
execute if score @s ability3 matches 160 run item replace entity @s hotbar.1 with barrier[minecraft:custom_name='{"text":"Wrench on Cooldown"}'] 8
item modify entity @s hotbar.1 under_pack:engineer/wrench
execute if score @s ability3 matches 1 run item replace entity @s hotbar.1 with shears[custom_name='{"bold":true,"color":"gray","text":"Wrench"}',custom_data={wrench:1b}] 1
execute if score @s ability3 matches 1..161 run scoreboard players remove @s ability3 1

#viagra ability5
execute if score @s ability5 matches 200 run item replace entity @s hotbar.3 with barrier[custom_name='{"text":"Viagra on cooldown"}'] 10
item modify entity @s hotbar.3 under_pack:engineer/viagra
execute if score @s ability5 matches 1.. run scoreboard players remove @s ability5 1

#magnet ability4
item modify entity @s hotbar.7 under_pack:engineer/manget
execute if score @s ability4 matches 1 run item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name='{"color":"red","text":"Magnet"}',custom_model_data=43,custom_data={enginemag:1b}]
execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1

#turret ability7
execute if score @s ability7 matches 300 run item replace entity @s hotbar.6 with barrier 15
item modify entity @s hotbar.6 under_pack:engineer/turret
execute if score @s ability7 matches 1.. run scoreboard players remove @s ability7 1