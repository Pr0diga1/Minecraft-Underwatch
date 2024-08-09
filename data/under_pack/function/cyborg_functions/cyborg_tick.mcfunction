experience set @s 0 points
#capacitence death
execute if score @s cyborgcap matches 100.. run damage @s 100 explosion
execute if score @s cyborgcap matches 100.. run experience set @s 0 levels
execute if score @s cyborgcap matches 100.. run scoreboard players set @s cyborgcap 0
#carrot detection
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{cyborgspeed:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgspeed:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_speed
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{cyborgregen:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgregen:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_regen
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{cyborgstrong:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgstrong:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_strength

#size stuffs
execute if score @s cyborgsizebuffer matches 1.. run scoreboard players remove @s cyborgsizebuffer 1
execute if score @s cyborgsizebuffer matches 0 if score @s cyborgsize matches ..99 run function under_pack:cyborg_functions/cyborg_size_reset

#haytchpeeings
execute if score @s cyborghp matches 1 run attribute @s generic.max_health base set 20
execute if score @s cyborghp matches 1 run attribute @s generic.attack_damage base set 1
execute if score @s cyborghp matches 1.. run scoreboard players remove @s cyborghp 1

#lower caps
execute if score @s cyborgcap matches 1.. run scoreboard players add @s cyborgtimer 1
execute if score @s cyborgtimer matches 7.. run scoreboard players remove @s cyborgcap 1
execute if score @s cyborgtimer matches 7.. run experience add @s -1 levels
execute if score @s cyborgtimer matches 7.. run scoreboard players set @s cyborgtimer 0


scoreboard players reset @s reset
