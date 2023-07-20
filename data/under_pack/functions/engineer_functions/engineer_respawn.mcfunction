scoreboard players set @s ability1 179
scoreboard players set @s ability2 0
scoreboard players set @s ability3 179
scoreboard players set @s ability4 219
scoreboard players set @s engineer_ult 0
tag @a remove graved
kill @e[tag=enginehole]
function under_pack:engineer_functions/engineer_turret_hit

kill @e[tag=enginetrack] 
kill @e[nbt={Item:{tag:{enginedrug:1b}}}]
kill @e[type=snowball]

item replace entity @s hotbar.0 with iron_pickaxe{CustomModelData:1,display:{Name:'{"text":"Squeeky Hammer","color":"light_purple","bold":true}',Lore:['{"text":"Purchased for a very reasonable price"}']},HideFlags:7,Tags:["enginepick"],Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1035938018,-874035943,-1955986239,264483589]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;-137348685,1976257155,-1258099771,939362343]}]} 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,red:1b} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{CustomModelData:3,display:{Name:'{"text":"5000mg of Ibuprofen","color":"blue"}'},enginedrug:1b,blue:1b} 1

