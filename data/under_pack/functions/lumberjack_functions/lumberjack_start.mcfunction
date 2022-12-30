clear @s
tag @s add lumberjack
#axe
item replace entity @s hotbar.0 with iron_axe{Damage:11,display:{Name:'{"text":"Trusty Axe","color":"dark_gray","bold":true}',Lore:['{"text":"Passed down for generations","color":"dark_purple"}']},HideFlags:6,Unbreakable:1b,Enchantments:[{}]} 1
#jump
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Axe Throw","color":"green"}'},lumberthrow:1b} 1
#ult
#armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}


