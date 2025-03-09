experience set @s 8 levels
scoreboard players set @s ability1 8
scoreboard players set @s gunammo 40
item replace entity @s hotbar.0 with barrier
execute at @s run kill @e[sort=nearest,limit=1,distance=..2,type=item,nbt={Item:{components:{"minecraft:custom_data":{gunreload:true}}}}]
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.1 0.84