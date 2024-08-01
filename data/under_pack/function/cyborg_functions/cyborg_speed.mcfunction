effect give @s speed 5 2 true
scoreboard players set @s cyborghand 100
item replace entity @s hotbar.0 with iron_block[custom_name='{"bold":true,"color":"dark_gray","text":"Metal Hand"}',custom_data={Tags:["cyborgsword"]},attribute_modifiers=[{id:"damage",type:"generic.attack_damage",amount:1.5,operation:"add_value"},{id:"armor",type:"generic.attack_speed",amount:-3.5,operation:"add_value"}]] 1
scoreboard players add @s cyborgcap 30
experience add @s 30 levels