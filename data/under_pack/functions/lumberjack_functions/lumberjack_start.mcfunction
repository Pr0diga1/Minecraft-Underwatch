clear @s
tag @s remove lumberDrop
#axe
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Trusty Axe","color":"dark_gray","bold":true}',Lore:['{"text":"Simply Huge","color":"dark_purple"}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1109363977,-2135735884,-1707744455,1574874286],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.4,Operation:0,UUID:[I;363069182,1480476426,-1719579912,406952323],Slot:"mainhand"}],CustomModelData:28,lumberthrow:1b,} 1
#jump
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:27,display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1

#armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:8s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true}

scoreboard players set @s ability1 199

#clean arrows
kill @e[type=arrow,tag=lumbersweeparrow]

#run the class select
function under_pack:general_functions/general_character_select