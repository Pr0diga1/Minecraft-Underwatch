clear @s
item replace entity @s weapon.offhand with bow{display:{Name:'{"text":"Cool Bow","color":"blue"}',Lore:['{"text":"it\'s so cool!"}']},HideFlags:4,Unbreakable:1b}
item replace entity @s hotbar.0 with tipped_arrow{display:{Name:'{"text":"Heavy Arrow","color":"dark_red","bold":true}'},archerheavy:1b,CustomPotionColor:16711680,Potion:"minecraft:empty"} 4
item replace entity @s hotbar.1 with tipped_arrow{display:{Name:'{"text":"Light Arrow","color":"#FF1FFF","bold":true}'},archerlight:1b,CustomPotionColor:16719871,Potion:"minecraft:empty"} 4
#Backstep
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Backstep","color":"green"}'},archerBackstep:1b} 1

item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:13s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}

scoreboard players set @s ability1 1
scoreboard players set @s ability2 1
scoreboard players set @s ability3 139

#run the class select
function under_pack:general_functions/general_character_select