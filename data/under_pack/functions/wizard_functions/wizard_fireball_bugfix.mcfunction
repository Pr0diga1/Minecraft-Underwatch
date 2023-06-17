#give the wand
item replace entity @s[team=uRed] hotbar.0 with carrot_on_a_stick{CustomModelData:45,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b,red:1b} 1
item replace entity @s[team=uBlue] hotbar.0 with carrot_on_a_stick{CustomModelData:45,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b,blue:1b} 1

#kill the snowball that cast it
execute as @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{wizardWand:1b,red:1b}}}]
execute as @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{wizardWand:1b,blue:1b}}}]