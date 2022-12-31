clear @s
tag @s add ninja
#Sword
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Katana","color":"dark_gray"}',Lore:['{"text":"Right Click to dash"}']},Unbreakable:1b,ninjaDash:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-303483349,-628079732,-1599542459,-1119264089],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;189918499,1882276604,-1159240676,932653466],Slot:"mainhand"}]} 1
#Toss
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Sherukin Throw","color":"blue"}'},ninjaToss:1b} 1
#Hyperventilate
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right Click to hyperventilate"}']},ninjaHyperventilate:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-313458390,-1808840175,-1185663256,636532485],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;971141352,1171998355,-1798810994,-675089356],Slot:"mainhand"}]} 1
#armor
item replace entity @s armor.feet with iron_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with iron_leggings{Unbreakable:true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true}

#cooldown
scoreboard players set @s ability1 159
scoreboard players set @s ability2 139
scoreboard players set @s ability3 299

#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
scoreboard players set @s ninjaUltActive 0
scoreboard players set @s ninjaUltTiming 0
#constants
scoreboard players set ninjaUltKills modifier 600
scoreboard players set ninjaUltPercent modifier 45
scoreboard players set ninjaUltGoal modifier 4500