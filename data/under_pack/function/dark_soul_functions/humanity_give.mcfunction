execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye"}]}] run give @s ender_eye[custom_name='{"bold":true,"italic":false,"text":"Humanity","underlined":true}',custom_data={humanity:1b}] 1
execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye"}]}] run item replace entity @s hotbar.8 with ender_eye[custom_name='{"bold":true,"italic":false,"text":"Humanity","underlined":true}',custom_data={humanity:1b}] 1
execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye",count:4}],SelectedItem:{id:"minecraft:ender_eye"}}] run clear @s ender_eye[custom_data={humanity:1b}] 1
scoreboard players set @s ultKills 0

title @s title {"bold":true,"color":"white","italic":false,"text":"Humanity Aquired"}