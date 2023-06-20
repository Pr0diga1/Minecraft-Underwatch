clear @s
#Sword
item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:23,display:{Name:'{"text":"Katana","color":"dark_gray"}',Lore:['{"text":"Right Click to dash"}']},Unbreakable:1b,ninjaDash:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-303483349,-628079732,-1599542459,-1119264089],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;189918499,1882276604,-1159240676,932653466],Slot:"mainhand"}]} 1
#Toss
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:24,display:{Name:'{"text":"Shuriken Throw","color":"blue"}'},ninjaToss:1b} 1
#Hyperventilate
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:25,display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right Click to hyperventilate"}']},ninjaHyperventilate:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-313458390,-1808840175,-1185663256,636532485],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;971141352,1171998355,-1798810994,-675089356],Slot:"mainhand"}]} 1
#armor
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:8s},{id:"minecraft:depth_strider",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-35685007,918834775,-2139503561,-1856699579],Slot:"feet"}]} 1

#hyperventilate
scoreboard players set @s ninjaHyperventilate 0

#cooldown
scoreboard players set @s ability1 199
scoreboard players set @s ability2 179
scoreboard players set @s ability3 299

tag @a remove dashing
tag @s remove ninjaDashResist

#run the class select
function under_pack:general_functions/general_character_select