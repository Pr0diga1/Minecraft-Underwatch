## Give inventory
clear @s
# Main weapon
item replace entity @s hotbar.0 with netherite_sword{display:{Name:'{"text":"Netherite Dagger","color":"#472659","bold":true,"italic":false}'},CustomModelData:1,dagger:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;2030465041,-1224523562,-1231173866,-1811458856],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;993380834,826688861,-1362153008,-104466871],Slot:"mainhand"}]} 1
# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Invisibility Cloak","color":"#555755","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:30,cloak:1b} 1
# Pocket sand
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Pocket Sand","color":"#A8A85D","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:31,pocketSand:1b} 1

## Ult stuff
# Ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
# Removes xp
experience set @s 0 levels
experience set @s 0 points
# Ult on scores
scoreboard players set @s rogueUltActive 0
scoreboard players set @s rogueUltTiming 0

## Ult Config
# Constants for ult charge
scoreboard players set rogueUltKills modifier 600
# ULT PERCENT IS ULT GOAL /100
scoreboard players set rogueUltPercent modifier 50
#goal is 5000
