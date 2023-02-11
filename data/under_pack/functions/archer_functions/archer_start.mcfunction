clear @s
item replace entity @s weapon.offhand with bow{display:{Name:'{"text":"Cool Bow","color":"blue"}',Lore:['{"text":"it\'s so cool!"}']},HideFlags:4,Unbreakable:1b}
item replace entity @s hotbar.0 with tipped_arrow{display:{Name:'{"text":"Heavy Arrow","color":"dark_red","bold":true}'},archerheavy:1b,CustomPotionColor:16711680,Potion:"minecraft:empty"} 4
item replace entity @s hotbar.1 with tipped_arrow{display:{Name:'{"text":"Light Arrow","color":"#FF1FFF","bold":true}'},archerlight:1b,CustomPotionColor:16719871,Potion:"minecraft:empty"} 4
item replace entity @s hotbar.2 with tipped_arrow{display:{Name:'{"text":"Grapple Shot","color":"#009900","bold":true}'},archergrapple:1b,CustomPotionColor:39168,Potion:"minecraft:empty"} 1

item replace entity @s armor.feet with leather_boots{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}


#run the class select
function under_pack:general_functions/general_character_select