clear @s
tag @s add lumberjack
#axe
item replace entity @s hotbar.0 with iron_axe{Damage:12,display:{Name:'{"text":"Trusty Axe","color":"dark_gray","bold":true}',Lore:['{"text":"Passed down for generations","color":"dark_purple"}']},HideFlags:6,Unbreakable:1b,Enchantments:[{}]} 1
#jump
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Axe Throw","color":"green"}'},lumberthrow:1b} 1
#ult
#armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true,Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:true}


#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
scoreboard players set @s lumberjack_ult_casts 0

#constants for ult charge
scoreboard players set lumberjackUltKills modifier 600
#ULT PERCENT IS ULT GOAL /100
scoreboard players set lumberjackUltPercent modifier 30
#goal is 3000
