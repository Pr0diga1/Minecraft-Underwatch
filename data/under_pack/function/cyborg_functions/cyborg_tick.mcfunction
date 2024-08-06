experience set @s 0 points
#capacitence death
execute if score @s cyborgcap matches 100.. run damage @s 100 explosion
execute if score @s cyborgcap matches 100.. run experience set @s 0 levels
execute if score @s cyborgcap matches 100.. run scoreboard players set @s cyborgcap 0
#carrot detection
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{cyborgspeed:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgspeed:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_speed
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{cyborgregen:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgregen:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_regen
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{cyborgstrong:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgstrong:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_strength

#haytchpeeings
execute if score @s cyborghp matches 1 run attribute @s generic.max_health base set 20
execute if score @s cyborghp matches 1 run effect give @s minecraft:instant_health 1 1
execute if score @s cyborghp matches 1.. run scoreboard players remove @s cyborghp 1

#hungerings
execute if score @s cyborgeat matches 1.. run effect clear @s saturation
execute if score @s cyborgeat matches 1.. run scoreboard players remove @s cyborgeat 1

#weaknessings
execute if score @s cyborghand matches 1 run item replace entity @s hotbar.0 with iron_block[custom_name='{"bold":true,"color":"dark_gray","text":"Metal Hand"}',custom_data={Tags:["cyborgsword"]},attribute_modifiers=[{id:"damage",type:"generic.attack_damage",amount:3.7,operation:"add_value"},{id:"armor",type:"generic.attack_speed",amount:-3.2,operation:"add_value"}]] 1
execute if score @s cyborghand matches 1.. run scoreboard players remove @s cyborghand 1

#lower caps
execute if score @s cyborgcap matches 1.. run scoreboard players add @s cyborgtimer 1
execute if score @s cyborgtimer matches 8.. run scoreboard players remove @s cyborgcap 1
execute if score @s cyborgtimer matches 8.. run experience add @s -1 levels
execute if score @s cyborgtimer matches 8.. run scoreboard players set @s cyborgtimer 0


scoreboard players reset @s reset
