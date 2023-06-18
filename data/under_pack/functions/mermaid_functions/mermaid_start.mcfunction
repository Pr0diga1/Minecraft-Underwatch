clear @s
item replace entity @s hotbar.0 with carrot_on_a_stick{mermaidburst:1b,display:{Name:'{"text":"Poseidon\'s Back Scratcher","color":"blue"}'},HideFlags:4,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-1506563190,401687741,-1460360327,-268238986],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.6,Operation:0,UUID:[I;79580379,-1903935077,-1275222226,-997440825],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with ender_eye{mermaidmist:1b,display:{Name:'{"text":"Nautical Mist","color":"dark_blue"}'}} 1
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with splash_potion{mermaidpotion:1b,red:1b,display:{Name:'{"text":"Tide Pool","color":"gray"}',Lore:['{"text":"Slows Enemies"}']},HideFlags:32,CustomPotionColor:1591008} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with splash_potion{mermaidpotion:1b,blue:1b,display:{Name:'{"text":"Tide Pool","color":"gray"}',Lore:['{"text":"Slows Enemies"}']},HideFlags:32,CustomPotionColor:1591008} 1

scoreboard players set @s ability1 0

item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.feet with diamond_boots{Unbreakable:true,Enchantments:[{id:"minecraft:depth_strider",lvl:5s},{id:"minecraft:blast_protection",lvl:8s}]}

function under_pack:general_functions/general_character_select
function under_pack:mermaid_functions/mermaid_respawn

scoreboard players set mermaidHealingConstant constant 5

execute as @s[team=uRed] run scoreboard players set @a[team=uRed] mermaidheal 1
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] mermaidheal 1
