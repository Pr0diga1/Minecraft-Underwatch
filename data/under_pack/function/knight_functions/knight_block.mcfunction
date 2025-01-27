stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
execute if score @s class matches 4 run effect give @s resistance 1 2 true
execute at @s run particle minecraft:glow ~ ~.7 ~ .3 .5 .3 .001 10 force @a

execute if score @s blockIsActive matches ..1 run scoreboard players add @s blockIsActive 1

item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Reliquary Blade"}',lore=['"Only given to those worthy"'],custom_data={knightsword:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2.9,operation:"add_value",slot:"mainhand"}]] 1
