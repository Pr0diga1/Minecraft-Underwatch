clear @s
#pickaxe
item replace entity @s hotbar.0 with iron_pickaxe{CustomModelData:1,display:{Name:'{"text":"Squeeky Hammer","color":"light_purple","bold":true}',Lore:['{"text":"Purchased for a very reasonable price"}']},HideFlags:5,Unbreakable:1b,Tags:["enginepick"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-525436241,-377207569,-1460662685,-121992275],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;1987559778,1654670374,-1615110215,1839676688],Slot:"mainhand"}]} 1
#crossbow
item replace entity @s hotbar.1 with crossbow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow","color":"#FF7500"}'},HideFlags:3,Tags:["enginecross"],Enchantments:[{id:"minecraft:piercing",lvl:2s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:24,Amplifier:100b,Duration:100}],CustomPotionColor:16777001}},{},{}],Charged:1b} 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,red:1b} 3
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,blue:1b} 3
#WD-40
item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:43,display:{Name:'{"text":"WD-40","color":"dark_blue"}'},engineslip:1b} 1
#wall
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:49,display:{Name:'{"text":"Cardboard and Duct Tape","color":"gold"}'},enginewall:1b} 1
#armor
item replace entity @s armor.chest with leather_chestplate{display:{color:16777215},Unbreakable:1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:13s},{id:"minecraft:depth_strider",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1739145316,-783201799,-1355317915,1766680600],Slot:"feet"}]} 1

scoreboard players set @s ability1 179
scoreboard players set @s ability2 0
scoreboard players set @s ability3 179
scoreboard players set @s ability4 219
scoreboard players set @s engineer_ult 0

#makes sure that the ult can activate
scoreboard players set @s engineer_ult 0

#run the class select
function under_pack:general_functions/general_character_select