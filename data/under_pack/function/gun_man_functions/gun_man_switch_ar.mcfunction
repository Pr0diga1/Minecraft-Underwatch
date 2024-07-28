execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"color":"white","text":"Shotgun"}',lore=['"its a gun."'],custom_model_data=52,custom_data={gunsg:1b,blue:1b}] 1
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"color":"white","text":"Shotgun"}',lore=['"its a gun."'],custom_model_data=52,custom_data={gunsg:1b,red:1b}] 1

playsound block.piston.extend master @s ~ ~ ~

kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{gunar:1b,red:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{gunar:1b,blue:1b}}}}]

#play piston contract on swapback
