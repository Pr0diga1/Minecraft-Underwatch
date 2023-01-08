## Player reset
clear @s
# Reset death scoreboard
scoreboard players reset @a uDeaths

#kill the telepot
execute as @s[team=uRed] run kill @e[type=potion,tag=telepot,tag=uRed]
execute as @s[team=uBlue] run kill @e[type=potion,tag=telepot,tag=uBlue]
tag @s remove telepot
tag @s remove healing

## Main weapon
item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},CustomModelData:2,acid:1b,Enchantments:[{}],Potion:"minecraft:harming",CustomPotionColor:9421337} 1
item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"Healing Solution","color":"#BF5DC2","bold":true,"italic":false}'},CustomModelData:3,healing:1b,CustomPotionColor:12541378} 1
# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1
# Speed pot
item replace entity @s hotbar.3 with potion{display:{Name:'{"text":"Speed Juice","color":"#47C8FF","bold":true,"italic":false}'},CustomModelData:4,speed:1b,CustomPotionEffects:[{Id:1,Amplifier:1b,Duration:120}],CustomPotionColor:4704511} 1
# Armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with iron_leggings{Unbreakable:true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}

scoreboard players set @s movement 141
scoreboard players set @s ability1 41
scoreboard players set @s ability2 121
scoreboard players set @s ability3 241