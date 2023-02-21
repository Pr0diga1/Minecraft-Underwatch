# Give inventory
clear @s

# Main weapon
item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},CustomModelData:2,acid:1b,Enchantments:[{}],Potion:"minecraft:harming",CustomPotionColor:16777215} 1
item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"Healing Solution","color":"#BF5DC2","bold":true,"italic":false}'},CustomModelData:3,healing:1b,CustomPotionColor:16777215} 1

# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1

# Armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:13s}]}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:true,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1728819482,-1676000605,-1806744958,-439757376]}]}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}

scoreboard players set @s movement 141
scoreboard players set @s ability1 41
scoreboard players set @s ability2 121
execute as @s[team=uRed] run kill @e[type=potion,tag=telepot,tag=uRed]
execute as @s[team=uBlue] run kill @e[type=potion,tag=telepot,tag=uBlue]
tag @s remove telepot
tag @s remove healing

#run the class select
function under_pack:general_functions/general_character_select
