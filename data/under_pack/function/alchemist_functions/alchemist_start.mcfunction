# Give inventory
clear @s

## Main weapons
item replace entity @s hotbar.0 with lingering_potion[max_stack_size=2,custom_name='{"bold":true,"color":"#8FC219","italic":false,"text":"Acid"}',custom_data={acid:1b},potion_contents={custom_color:10670895,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:123,show_particles:0b,show_icon:0b}]}] 2
item replace entity @s hotbar.1 with lingering_potion[custom_name='{"bold":true,"color":"#BF5DC2","italic":false,"text":"Healing Solution"}',custom_data={healing:1b},potion_contents={custom_color:16740073,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:122,show_particles:0b,show_icon:0b}]}] 1

# Telepot
item replace entity @s hotbar.2 with lingering_potion[custom_name='{"bold":true,"color":"#8753E0","italic":false,"text":"Telepot"}',custom_data={telepot:1b},potion_contents={custom_color:8328897,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:121,show_particles:0b,show_icon:0b}]}] 1

# Molotov
item replace entity @s hotbar.3 with lingering_potion[custom_name='{"bold":true,"color":"#E07F10","italic":false,"text":"Molotov Cocktail"}',custom_data={molotov:1b},potion_contents={custom_color:14712592,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:124,show_particles:0b,show_icon:0b}]}] 1

# Armor
item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"scale",type:"scale",amount:.2,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}] 1
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
experience set @s 100 levels

#run the class select
function under_pack:general_functions/general_character_select
