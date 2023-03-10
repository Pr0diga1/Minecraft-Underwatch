scoreboard players set @s ability1 179
scoreboard players set @s ability2 0
scoreboard players set @s ability3 179
scoreboard players set @s ability4 219
scoreboard players set @s engineer_ult 0
tag @a remove graved
kill @e[tag=enginehole]

kill @e[tag=enginetrack] 
kill @e[nbt={Item:{tag:{enginedrug:1b}}}]
kill @e[type=snowball]

item replace entity @s hotbar.0 with iron_pickaxe{CustomModelData:1,display:{Name:'{"text":"Squeeky Hammer","color":"light_purple","bold":true}',Lore:['{"text":"Purchased for a very reasonable price"}']},HideFlags:7,Tags:["enginepick"],Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1035938018,-874035943,-1955986239,264483589]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;-137348685,1976257155,-1258099771,939362343]}]} 1
#crossbow
item replace entity @s hotbar.1 with crossbow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow","color":"#FF7500"}'},HideFlags:3,Tags:["enginecross"],Enchantments:[{id:"minecraft:piercing",lvl:2s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:24,Amplifier:100b,Duration:100}],CustomPotionColor:16777001}},{},{}],Charged:1b} 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,red:1b} 3
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,blue:1b} 3
#WD-40
item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:43,display:{Name:'{"text":"WD-40","color":"dark_blue"}'},engineslip:1b} 1
#wall
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:49,display:{Name:'{"text":"Cardboard and Duct Tape","color":"gold"}'},enginewall:1b} 1
#capacitor
scoreboard players set @s engineercap 0
execute if entity @s[team=uRed] run kill @e[tag=enginecap,tag=red]
execute if entity @s[team=uRed] run tag @a[team=uBlue] remove capped

execute if entity @s[team=uBlue] run kill @e[tag=enginecap,tag=blue]
execute if entity @s[team=uBlue] run tag @a[team=uRed] remove capped
