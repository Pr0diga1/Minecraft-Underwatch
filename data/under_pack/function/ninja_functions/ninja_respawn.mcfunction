#cooldown
scoreboard players set @s ability1 199
scoreboard players set @s ability2 2
scoreboard players set @s ability3 2
#brass knuckles
scoreboard players set @s ninjaHyperventilate 0
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"gold","text":"Brass Knuckles"},lore=["Right Click to hyperventilate"],custom_data={ninjaHyperventilate:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1
