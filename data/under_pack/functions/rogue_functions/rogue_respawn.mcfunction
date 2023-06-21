# Reset death scoreboard
scoreboard players reset @a uDeaths

# Reset other scoreboards
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0

# Reset tags
tag @s remove cloak

# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Invisibility Cloak","color":"#555755","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:30,cloak:1b} 1
# Poison Dart
item replace entity @s hotbar.2 with crossbow{display:{Name:'{"text":"Poison Dart","color":"#BAFF30","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:2,posiondartrogue:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:19,Amplifier:0b,Duration:200}],CustomPotionColor:16777210}},{},{}],Charged:1b} 1
# Pocket sand
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Pocket Sand","color":"#A8A85D","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:31,pocketSand:1b} 1
# Swap
item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Friend Swap","color":"dark_purple","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:26,swap:1b} 1
# Armor
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:8s},{id:"minecraft:depth_strider",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1963828120,1181893995,-1192928214,-390992891]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1235388029,2112048997,-1701415462,-634174779]}]} 1
