# Give inventory
clear @s

# Main weapon
item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},acid:1b,Enchantments:[{}],Potion:"minecraft:harming",CustomPotionColor:9421337} 1
item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"Healing Solution","color":"#BF5DC2","bold":true,"italic":false}'},healing:1b,CustomPotionColor:12541378} 1

# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1

# Speed pot
item replace entity @s hotbar.3 with potion{display:{Name:'{"text":"Speed Juice","color":"#47C8FF","bold":true,"italic":false}'},speed:1b,CustomPotionEffects:[{Id:1,Amplifier:0b,Duration:120}],CustomPotionColor:4704511} 1

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