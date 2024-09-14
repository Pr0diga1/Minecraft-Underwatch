
#red
#create a marker that will follow the snowball
execute if entity @e[nbt={Item:{tag:{enginedrug:1b,red:1b}}}] unless entity @e[tag=enginetrack,tag=red] at @e[nbt={Item:{tag:{enginedrug:1b,red:1b}}}] run summon marker ~ ~ ~ {Tags:["enginetrack","red"]} 

#tp markers to snowballs every tick
tp @e[type=marker,tag=enginetrack,tag=red] @e[type=snowball,limit=1,sort=nearest,nbt={Item:{tag:{enginedrug:1b,red:1b}}}]

#give healing to everyone near a marker if its snowball is not there
execute as @e[type=marker,tag=enginetrack,tag=red] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,red:1b}}}] at @s run effect give @a[distance=..3,team=uRed] instant_health
execute as @e[type=marker,tag=enginetrack,tag=red] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,red:1b}}}] at @s run function under_pack:engineer_functions/engineer_particle
execute as @e[type=marker,tag=enginetrack,tag=red] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,red:1b}}}] at @s run kill @s

#blue
#create a marker that will follow the snowball
execute if entity @e[nbt={Item:{tag:{enginedrug:1b,blue:1b}}}] unless entity @e[tag=enginetrack,tag=blue] at @e[nbt={Item:{tag:{enginedrug:1b,blue:1b}}}] run summon marker ~ ~ ~ {Tags:["enginetrack","blue"]} 

#tp markers to snowballs every tick
tp @e[type=marker,tag=enginetrack,tag=blue] @e[type=snowball,limit=1,sort=nearest,nbt={Item:{tag:{enginedrug:1b,blue:1b}}}]

#give healing to everyone near a marker if its snowball is not there
execute as @e[type=marker,tag=enginetrack,tag=blue] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,blue:1b}}}] at @s run effect give @a[distance=..3,team=uBlue] instant_health
execute as @e[type=marker,tag=enginetrack,tag=blue] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,blue:1b}}}] at @s run function under_pack:engineer_functions/engineer_particle
execute as @e[type=marker,tag=enginetrack,tag=blue] unless entity @e[type=snowball,nbt={Item:{tag:{enginedrug:1b,blue:1b}}}] at @s run kill @s

#xp bar
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,Slot:2b,tag:{enginedrug:1b}}]}] if score @s ability2 matches 0 run experience set @s 100 levels
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,Slot:2b,tag:{enginedrug:1b}}]}] if score @s ability2 matches 0 run experience set @s 0 points

#cooldown (scoreboard objectives add ability2 dummy)
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,Slot:2b,tag:{enginedrug:1b}}]}] run scoreboard players add @s ability2 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,Slot:2b,tag:{enginedrug:1b}}]}] if score @s ability1 matches 1.. run experience add @s 12 points
execute if entity @s[team=uRed] if score @s ability2 matches 61 run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,red:1b} 1
execute if entity @s[team=uBlue] if score @s ability2 matches 61 run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,blue:1b} 1
execute if score @s ability2 matches 61.. run scoreboard players set @s ability2 0
execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball",Slot:2b,tag:{enginedrug:1b}}]}] run clear @s snowball{enginedrug:1b}



