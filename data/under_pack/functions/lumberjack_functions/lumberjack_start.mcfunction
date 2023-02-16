clear @s
tag @s add lumberjack
#axe
item replace entity @s hotbar.0 with iron_axe{display:{Name:'{"text":"Trusty Axe","color":"dark_gray","bold":true}',Lore:['{"text":"Passed down for generations","color":"dark_purple"}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;1109363977,-2135735884,-1707744455,1574874286],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.1,Operation:0,UUID:[I;363069182,1480476426,-1719579912,406952323],Slot:"mainhand"}]} 1
#jump
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:27,display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:28,display:{Name:'{"text":"Axe Sweep","color":"green"}'},lumberthrow:1b} 1
#ult
#armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:13s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true}

#run the class select
function under_pack:general_functions/general_character_select