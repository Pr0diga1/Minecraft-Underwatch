clear @s
#pickaxe
item replace entity @s hotbar.0 with iron_pickaxe{CustomModelData:1,display:{Name:'{"text":"Squeeky Hammer","color":"light_purple","bold":true}',Lore:['{"text":"Purchased for a very reasonable price"}']},HideFlags:5,Unbreakable:1b,Tags:["enginepick"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-525436241,-377207569,-1460662685,-121992275],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;1987559778,1654670374,-1615110215,1839676688],Slot:"mainhand"}]} 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,red:1b} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,blue:1b} 1
#viagra
item replace entity @s hotbar.3 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Viagra","color":"dark_red"}'},enginedrug:1b} 2
#wall
item replace entity @s hotbar.4 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Wall","color":"gray"}'},enginewall:1b} 2
#turret
item replace entity @s hotbar.6 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Turret","color":"dark_red"}'},enginedrug:1b} 2

#armor
item replace entity @s armor.chest with leather_chestplate{display:{color:16777215},Unbreakable:1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:8s},{id:"minecraft:depth_strider",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;-1739145316,-783201799,-1355317915,1766680600],Slot:"feet"}]} 1

scoreboard players set @s ability1 179
scoreboard players set @s ability2 0
scoreboard players set @s ability3 179
scoreboard players set @s ability4 219
scoreboard players set @s ability5 199
scoreboard players set @s ability7 299

experience set @s 100 levels
experience set @s 742 points

execute as @s[team=uRed] run kill @e[type=marker,tag=redEngineerTurret]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueEngineerTurret]

execute as @s[team=uRed] run tag @a remove redViagraTarget
execute as @s[team=uBlue] run tag @a remove blueViagraTarget

#run the class select
function under_pack:general_functions/general_character_select