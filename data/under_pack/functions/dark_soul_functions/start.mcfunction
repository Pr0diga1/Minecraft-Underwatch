# Give inventory
clear @s

## Main weapon
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Chaos Zweihänder","color":"#FF4912","bold":true,"italic":false,"underlined":true}'},Unbreakable:1b,CustomModelData:51,zwei:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;440549188,-1922806094,-1556991015,440606285],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;1207194066,-738309455,-1712229264,-1185358023],Slot:"mainhand"}]} 1

# Abilities
scoreboard players set @s ability1 0
scoreboard players set @s ultKills 0
item replace entity @s hotbar.1 with ender_eye{display:{Name:'{"text":"Estus Flask","color":"gold","bold":true,"italic":false}'},CustomModelData:6,estus:1b} 3

# Armor
item replace entity @s armor.feet with leather_boots{display:{color:15128132},Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:8s}]}
item replace entity @s armor.legs with leather_leggings{display:{color:15128132},Unbreakable:true,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8,Operation:0,UUID:[I;-1728819482,-1676000605,-1806744958,-439757376]}]}
item replace entity @s armor.chest with leather_chestplate{display:{color:15128132},Unbreakable:true}

# Run the class select
function under_pack:general_functions/general_character_select