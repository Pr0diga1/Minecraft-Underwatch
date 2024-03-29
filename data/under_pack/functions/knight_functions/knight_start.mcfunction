clear @s

#sword/block
item replace entity @s hotbar.0 with ender_eye{CustomModelData:1,display:{Name:'{"text":"Reliquary Blade","color":"white"}',Lore:['{"text":"Only given to those worthy"}']},HideFlags:5,knightsword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.3,Operation:0,UUID:[I;1830644796,1135495493,-1953374725,900861682],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;1787687604,386813173,-1856770668,-2070457650],Slot:"mainhand"}]} 1
#self heal
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Selfish Prayer","color":"gold"}'},knightheal:1b,CustomModelData:44} 1
#grenade
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Holy Hand Grenade","color":"dark_green"}'},knightbomb:1b,red:1b,CustomModelData:1} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Holy Hand Grenade","color":"dark_green"}'},knightbomb:1b,blue:1b,CustomModelData:1} 1
#armor
item replace entity @s armor.chest with chainmail_chestplate{HideFlags:2,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:12,Operation:0,UUID:[I;-1728819482,-1676000605,-1806744958,-439757376]}]} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:8s}]}

scoreboard players set @s movement 319
scoreboard players set @s ability1 179

#run the class select
function under_pack:general_functions/general_character_select