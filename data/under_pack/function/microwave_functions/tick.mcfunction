execute as @s[tag=uDead] run return fail

#pickup microwave carrot on a stick
execute as @a[nbt=!{Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b,components:{"minecraft:custom_data":{wave:1b}}}]},distance=..3] run item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"color":"gray","text":"Pickup Microwave"}',custom_model_data=27,custom_data={micropick:1b}] 1
execute as @a[distance=4..] run item replace entity @s hotbar.8 with air

#pickup teleporting
execute if entity @s[team=uRed] run function under_pack:microwave_functions/tick_red
execute if entity @s[team=uBlue] run function under_pack:microwave_functions/tick_blue
