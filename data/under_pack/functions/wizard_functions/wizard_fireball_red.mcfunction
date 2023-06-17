#summon the fireball
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["redWizardFireball"],ExplosionPower:2}

#reset
scoreboard players reset @s reset
scoreboard players remove @s wizardFireball 1

#give the wizard the wand back
item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:45,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b,red:1b} 1

#kill the snowball that cast it
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{wizardWand:1b,red:1b}}}]