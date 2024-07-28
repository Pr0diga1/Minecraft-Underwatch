#give the wand
item replace entity @s[team=uRed] hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"}',lore=['"Crafted from the tree of Lofaktar"'],custom_model_data=45,custom_data={wizardWand:1b,red:1b}] 1
item replace entity @s[team=uBlue] hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"}',lore=['"Crafted from the tree of Lofaktar"'],custom_model_data=45,custom_data={wizardWand:1b,blue:1b}] 1

#kill the snowball that cast it
execute as @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,red:1b}}}}]
execute as @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,blue:1b}}}}]
