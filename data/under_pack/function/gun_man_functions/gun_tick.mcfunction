#delays between firing
execute if score @s riflebuffer matches 1.. run scoreboard players remove @s riflebuffer 1
execute if score @s gunshotbuffer matches 1.. run scoreboard players remove @s gunshotbuffer 1

#delay seeing
execute if score @s riflebuffer matches 1.. run item modify entity @s hotbar.0 under_pack:gun_man/rifle
execute if score @s gunshotbuffer matches 1.. run item modify entity @s hotbar.1 under_pack:gun_man/shotgun


#relaod
execute at @s if entity @e[sort=nearest,limit=1,distance=..2,type=item,nbt={Item:{components:{"minecraft:custom_data":{gunreload:true}}}}] run function under_pack:gun_man_functions/reload

execute if score @s gunammo matches 1.. run scoreboard players remove @s gunammo 1
execute if score @s gunammo matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:barrier"}]}] run function under_pack:gun_man_functions/loaded


execute if score @s ability1 matches ..0 run function under_pack:gun_man_functions/reload