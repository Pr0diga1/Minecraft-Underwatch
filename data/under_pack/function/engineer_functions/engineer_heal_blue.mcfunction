scoreboard players set @s engineerhealbuffer 3
experience set @s 0 points
execute at @s run data modify storage engineer blue.x set from entity @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}},limit=1,sort=nearest] Pos[0]
execute at @s run data modify storage engineer blue.y set from entity @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}},limit=1,sort=nearest] Pos[1]
execute at @s run data modify storage engineer blue.z set from entity @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}},limit=1,sort=nearest] Pos[2]
kill @e[type=item,nbt={Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}}]
