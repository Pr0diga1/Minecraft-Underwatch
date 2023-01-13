#new item
item replace entity @s hotbar.2 with wooden_shovel{Damage:1,CustomModelData:25,display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right click to hyperventilate"}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.75,Operation:0,UUID:[I;537113220,-271563440,-1181580922,1019336070],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:150,Operation:0,UUID:[I;1293544503,868961315,-1316838275,1432965964],Slot:"mainhand"}]} 1

#sets the duration scoreboard
scoreboard players set @s ninjaHyperventilate 60

#playsound
execute at @s run playsound minecraft:block.iron_door.open master @a ~ ~ ~

#give player speed
effect give @s speed 3 1 false

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability3 0