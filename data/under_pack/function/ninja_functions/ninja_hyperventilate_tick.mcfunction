
#scoreboard goes down
scoreboard players remove @s ninjaHyperventilate 1

#remove a damage every 3 ticks
scoreboard players operation @s ninjaHyperventilateBuffer = @s ninjaHyperventilate
scoreboard players operation @s ninjaHyperventilateBuffer %= TheNumberTwo constant
execute if score @s ninjaHyperventilateBuffer matches 0 run item modify entity @s hotbar.2 under_pack:down1damage


#playsound at 0
execute if score @s ninjaHyperventilate matches 0 at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~

#reset at 0
execute if score @s ninjaHyperventilate matches 0 run item replace entity @s hotbar.2 with carrot[custom_name='{"color":"gold","text":"Brass Knuckles"}',lore=['"Right Click to hyperventilate"'],custom_model_data=32,custom_data={ninjaHyperventilate:1b},attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 15
