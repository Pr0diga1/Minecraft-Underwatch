#summon the fireball
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["redWizardFireball"],ExplosionPower:2}

#reset
scoreboard players reset @s reset
scoreboard players remove @s wizardFireball 1

#give the wizard the wand back
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"}',lore=['"Crafted from the tree of Lofaktar"'],custom_model_data=45,custom_data={wizardWand:1b,red:1b}] 1

#kill the snowball that cast it
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,red:1b}}}}]