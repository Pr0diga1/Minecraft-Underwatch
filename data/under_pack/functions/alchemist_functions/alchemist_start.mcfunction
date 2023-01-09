# Give inventory
clear @s

# Main weapon
item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},CustomModelData:2,acid:1b,Enchantments:[{}],Potion:"minecraft:harming",CustomPotionColor:16777215} 1
item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"Healing Solution","color":"#BF5DC2","bold":true,"italic":false}'},CustomModelData:3,healing:1b,CustomPotionColor:16777215} 1

# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1

# Speed pot
item replace entity @s hotbar.3 with potion{display:{Name:'{"text":"Speed Juice","color":"#47C8FF","bold":true,"italic":false}'},CustomModelData:4,speed:1b,CustomPotionEffects:[{Id:1,Amplifier:1b,Duration:120}],CustomPotionColor:16777215} 1

# Armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:2s}]}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}

scoreboard players set @s movement 141
scoreboard players set @s ability1 41
scoreboard players set @s ability2 121
scoreboard players set @s ability3 241
execute as @s[team=uRed] run kill @e[type=potion,tag=telepot,tag=uRed]
execute as @s[team=uBlue] run kill @e[type=potion,tag=telepot,tag=uBlue]
tag @s remove telepot
tag @s remove healing

## Ult stuff
#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult
scoreboard players set @s alchemistUltActive 0
scoreboard players set @s alchemistUltTiming 0

#constants for ult charge
scoreboard players set alchemistUltKills modifier 600
#ULT PERCENT IS ULT GOAL /100
scoreboard players set alchemistUltPercent modifier 40
#goal is 4500