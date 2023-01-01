# Give inventory
clear @s

# Main weapon
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},acid:1b,Potion:"minecraft:harming",CustomPotionColor:9421337}}}
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Healing","color":"#C265BC","bold":true,"italic":false}'},healing:1b,Potion:"minecraft:strong_regeneration",CustomPotionColor:12740028}}}

# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1

# Armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}

## Ult stuff
#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#ult
scoreboard players set @s alchemistUltActive 0
scoreboard players set @s alchemistUltTiming 0

#constants for ult charge
scoreboard players set alchemistUltKills modifier 600
#ULT PERCENT IS ULT GOAL /100
scoreboard players set alchemistUltPercent modifier 45
#goal is 4500