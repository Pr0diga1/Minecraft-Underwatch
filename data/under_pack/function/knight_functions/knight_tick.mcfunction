#detects when abilities are used
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{knightheal:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{knightheal:1b}}}},scores={reset=1..}] as @s run function under_pack:knight_functions/knight_heal

function under_pack:knight_functions/knight_cooldown
#heal cooldown
execute if score @s movement matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"color":"gold","text":"Selfish Prayer"},custom_data={knightheal:1b}] 1
execute if score @s movement matches 1.. run scoreboard players remove @s movement 1

#stopsounds for the block
stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
#eye of ender kill for block
kill @e[type=eye_of_ender]
#run block end the tick after block is done
execute if score @s blockIsActive matches 0.. run scoreboard players remove @s blockIsActive 1
execute if score @s blockIsActive matches 0 run function under_pack:knight_functions/knight_block_end

execute if score @s blockIsActive matches -1..0 run item replace entity @s hotbar.0 with ender_eye[custom_name={"color":"white","text":"Reliquary Blade"},lore=["Only given to those worthy"],custom_data={knightsword:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2.9,operation:"add_value",slot:"mainhand"}]] 1

