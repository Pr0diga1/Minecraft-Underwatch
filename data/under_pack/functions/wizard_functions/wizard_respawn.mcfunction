#fireball
item replace entity @s[team=uRed] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,red:1b} 3
item replace entity @s[team=uBlue] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,blue:1b} 3

#multishot
#expecto homoconversus
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"E","color":"red"},{"text":"x","color":"gold"},{"text":"p","color":"yellow"},{"text":"e","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"t","color":"blue"},{"text":"o ","color":"dark_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,wizardGay:1b} 1

#evoker fang shot
#the claws of rach'ivalishize
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b} 1

#curse
item replace entity @s hotbar.4 with ender_eye{display:{Name:'[{"text":"fgh","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"Curse","color":"black","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"fgh","bold":false,"italic":false,"strikethrough":false,"obfuscated":true}]'}} 1

#ability cooldowns
scoreboard players set @s movement 0
scoreboard players set @s ability1 299
scoreboard players set @s ability2 299
scoreboard players set @s ability3 50

experience set @s 100 levels
experience set @s 742 points