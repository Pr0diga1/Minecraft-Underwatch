#new item
item replace entity @s hotbar.2 with wooden_shovel[custom_name={"color":"gold","text":"Brass Knuckles"},lore=["Right click to hyperventilate"],damage=1,attribute_modifiers=[{id:"armor",type:"attack_damage",amount:3.25,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:150,operation:"add_value",slot:"mainhand"}]] 1

#sets the duration scoreboard
scoreboard players set @s ninjaHyperventilate 60

#playsound
execute at @s run playsound minecraft:block.iron_door.open master @a ~ ~ ~

#give player speed
effect give @s speed 3 1 false

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability3 300