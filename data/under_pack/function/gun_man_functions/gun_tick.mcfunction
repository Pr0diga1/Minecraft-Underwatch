#delays between firing
execute if score @s riflebuffer matches 1.. run scoreboard players remove @s riflebuffer 1

#delay seeing
execute if score @s riflebuffer matches 1.. run item modify entity @s hotbar.0 under_pack:gun_man/rifle

#shotgun cooldown
execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1
execute if score @s ability4 matches 1 run item replace entity @s hotbar.1 with iron_hoe[consumable={consume_seconds:100000000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},custom_name='{"color":"red","text":"Shotgun"}',lore=['"gun"'],custom_data={gunshot: true}] 1
execute if score @s ability4 matches 1.. run item modify entity @s hotbar.1 under_pack:gun_man/shotgun 

#relaod
execute at @s if entity @e[sort=nearest,limit=1,distance=..2,type=item,nbt={Item:{components:{"minecraft:custom_data":{gunreload:true}}}}] run function under_pack:gun_man_functions/reload

execute if score @s gunammo matches 1.. run scoreboard players remove @s gunammo 1
execute if score @s gunammo matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:0b}]}] run function under_pack:gun_man_functions/loaded


execute if score @s ability1 matches ..0 run function under_pack:gun_man_functions/reload