execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:splash_potion",count:2}]}] run give @s splash_potion[max_stack_size=2,custom_name='{"bold":true,"color":"#8FC219","italic":false,"text":"Acid"}',custom_model_data=2,custom_data={acid:1b},potion_contents={custom_color:16777215}] 1
tag @s remove reload_main
