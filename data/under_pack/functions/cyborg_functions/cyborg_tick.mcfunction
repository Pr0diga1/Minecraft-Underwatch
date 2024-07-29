experience set @s 0 points
#capacitence death
execute if score @s cyborgcap matches 100.. run damage @s 100 explosion
execute if score @s cyborgcap matches 100.. run experience set @s 0 levels
execute if score @s cyborgcap matches 100.. run scoreboard players set @s cyborgcap 0
#carrot detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{cyborgspeed:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{cyborgspeed:1b}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_speed
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{cyborgregen:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{cyborgregen:1b}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_regen

#lower caps
execute if score @s cyborgcap matches 1.. run scoreboard players add @s cyborgtimer 1
execute if score @s cyborgtimer matches 5.. run scoreboard players remove @s cyborgcap 1
execute if score @s cyborgtimer matches 5.. run experience add @s -1 levels
execute if score @s cyborgtimer matches 5.. run scoreboard players set @s cyborgtimer 0


scoreboard players reset @s reset
