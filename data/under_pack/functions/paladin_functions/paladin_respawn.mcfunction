#paladin gets a stick
item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Large Rock","color":"dark_gray","bold":true}'},Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.8,Operation:0,UUID:[I;665914782,1842694179,-1861744682,1507667590],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;848726694,1228753155,-2020300593,95512569],Slot:"mainhand"}]} 1

#paladin gets a shield
item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Piece of Driftwood"}'},HideFlags:1,Unbreakable:1b} 1

#bubble
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1

#absorption
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1


#ability cooldowns
scoreboard players set @s shieldStatus 250
scoreboard players set @s shieldDelay 0
scoreboard players set @s movement 0
scoreboard players set @s ability1 359
scoreboard players set @s ability2 239