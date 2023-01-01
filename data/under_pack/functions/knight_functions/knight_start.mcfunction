#sword/block
item replace entity @s hotbar.0 with ender_eye{display:{Name:'{"text":"Knightly Sword","color":"white"}',Lore:['{"text":"Only given to those worthy"}']},HideFlags:6,Unbreakable:1b,knightsword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1659789565,1414549155,-1199815574,-438496725]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;957298814,-795131512,-2008112315,-1424705865]}]} 1
#self heal
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Self Heal","color":"gold"}'},knightheal:1b} 1
#grenade
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Impact Grenade","color":"dark_green"}'},knightbomb:1b,red:1b} 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Impact Grenade","color":"dark_green"}'},knightbomb:1b,blue:1b} 1
#armor
item replace entity @s armor.head with chainmail_helmet{Unbreakable:1b}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}

#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#constants for ult charge
scoreboard players set knightUltKills modifier 600
#ULT PERCENT IS ULT GOAL /100
scoreboard players set knightUltPercent modifier 45
 
