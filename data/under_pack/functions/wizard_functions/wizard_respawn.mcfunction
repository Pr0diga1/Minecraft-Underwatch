#give the crossbow
item replace entity @s[team=uRed] hotbar.0 with carrot_on_a_stick{CustomModelData:45,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b,red:1b} 1
item replace entity @s[team=uBlue] hotbar.0 with carrot_on_a_stick{CustomModelData:45,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b,blue:1b} 1

#fireball
item replace entity @s hotbar.1 with ender_eye{display:{Name:'{"text":"Become Fire","color":"gold","bold":true,"italic":true}',Lore:['{"text":"\'fireball\' - Pitbull"}']},wizardFire:1b} 1

#multishot
#expecto homoconversus
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:48,display:{Name:'[{"text":"E","color":"red"},{"text":"x","color":"gold"},{"text":"p","color":"yellow"},{"text":"e","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"t","color":"blue"},{"text":"o ","color":"dark_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,wizardGay:1b} 1

#evoker fang shot
#the claws of rach'ivalishize
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:47,display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b} 1

#curse
item replace entity @s hotbar.4 with ender_eye{CustomModelData:2,display:{Name:'[{"text":"fgh","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"Curse","color":"black","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"fgh","bold":false,"italic":false,"strikethrough":false,"obfuscated":true}]'}} 1

#ability cooldowns
scoreboard players set @s movement 0
scoreboard players set @s wizardFireball 3
scoreboard players set @s ability1 299
scoreboard players set @s ability2 299
scoreboard players set @s ability3 50
scoreboard players set @s ability4 59
scoreboard players set @s ability5 0

experience set @s 100 levels
experience set @s 742 points

kill @e[tag=wizardboom]