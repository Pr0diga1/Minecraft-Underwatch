# Give inventory
clear @s

## Main weapon
item replace entity @s hotbar.0 with splash_potion[max_stack_size=2,custom_name='{"bold":true,"color":"#8FC219","italic":false,"text":"Acid"}',custom_model_data=2,custom_data={acid:1b},potion_contents={custom_color:16777215}] 2
item replace entity @s hotbar.1 with splash_potion[custom_name='{"bold":true,"color":"#BF5DC2","italic":false,"text":"Healing Solution"}',custom_model_data=3,custom_data={healing:1b},potion_contents={custom_color:16777215}] 1
# Telepot
item replace entity @s hotbar.2 with splash_potion[custom_name='{"bold":true,"color":"#8753E0","italic":false,"text":"Telepot"}',custom_model_data=1,custom_data={telepot:1b},potion_contents={custom_color:16777215}] 1
# Armor
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}] 1
item replace entity @s armor.legs with chainmail_leggings[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={show_in_tooltip:false}] 1

scoreboard players set @s movement 141
scoreboard players set @s ability1 41
scoreboard players set @s ability2 121
execute as @s[team=uRed] run kill @e[type=potion,tag=telepot,tag=uRed]
execute as @s[team=uBlue] run kill @e[type=potion,tag=telepot,tag=uBlue]
execute as @s[team=uRed] run kill @e[type=marker,tag=acid,tag=uRed]
execute as @s[team=uBlue] run kill @e[type=marker,tag=acid,tag=uBlue]
tag @s remove telepot
tag @s remove healing

#run the class select
function under_pack:general_functions/general_character_select
