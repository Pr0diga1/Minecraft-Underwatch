clear @s

#sword/block
item replace entity @s hotbar.0 with ender_eye{display:{Name:'{"text":"Reliquary Blade","color":"white"}',Lore:['{"text":"Only given to those worthy"}']},HideFlags:6,Unbreakable:1b,knightsword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.25,Operation:0,UUID:[I;-1659789565,1414549155,-1199815574,-438496725]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;957298814,-795131512,-2008112315,-1424705865]}],CustomModelData:1} 2
#self heal
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Selfish Prayer","color":"gold"}'},knightheal:1b,CustomModelData:44} 1
#grenade
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Holy Hand Grenade","color":"dark_green"}'},knightbomb:1b,red:1b,CustomModelData:1} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Holy Hand Grenade","color":"dark_green"}'},knightbomb:1b,blue:1b,CustomModelData:1} 1
#armor
item replace entity @s armor.chest with chainmail_chestplate{HideFlags:2,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8,Operation:0,UUID:[I;-1728819482,-1676000605,-1806744958,-439757376]}]} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s}]}

scoreboard players set @s movement 319
scoreboard players set @s ability1 179

#run the class select
function under_pack:general_functions/general_character_select