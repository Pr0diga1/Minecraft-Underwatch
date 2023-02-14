clear @s

#give the crossbow
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']},wizardWand:1b} 1

#fireball
item replace entity @s[team=uRed] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,red:1b} 3
item replace entity @s[team=uBlue] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,blue:1b} 3

#multishot
#expecto homoconversus
item replace entity @s hotbar.2 with crossbow{display:{Name:'[{"text":"Expecto ","color":"light_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}}],Charged:1b} 1

#evoker fang shot
#the claws of rach'ivalishize
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b} 1

#healing shot
#incolumitas
#item replace entity @s hotbar.4 with crossbow{display:{Name:'{"text":"Incolumitas","color":"yellow"}'},Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Trail:1b,Colors:[I;16776960]}]}}},{},{}],Charged:1b} 1

#armor
item replace entity @s armor.head with leather_helmet{display:{color:16777215},Unbreakable:1b} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:16777215},Unbreakable:1b} 1
item replace entity @s armor.legs with leather_leggings{display:{color:16777215},Unbreakable:1b} 1
item replace entity @s armor.feet with leather_boots{display:{color:16777215},Unbreakable:1b} 1

#ability cooldowns
scoreboard players set @s movement 0
scoreboard players set @s ability1 299
scoreboard players set @s ability2 299
scoreboard players set @s ability3 50

scoreboard players set @s wizardCrossbow 0
#run the class select
function under_pack:general_functions/general_character_select

#reset the hit cooldown so players are eligible to be hit by spells
scoreboard players set @a wizardRedHit 0
scoreboard players set @a wizardBlueHit 0

experience set @s 100 levels
experience set @s 742 points