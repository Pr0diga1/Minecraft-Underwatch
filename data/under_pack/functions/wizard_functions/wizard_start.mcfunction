clear @s

#give the fireworks in offhand, there will always be one
item replace entity @s weapon.offhand with firework_rocket{display:{Name:'{"text":"Abyssal Voidwrath","color":"black","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"imbued with the power of the abyss"}']},Fireworks:{Flight:1b,Explosions:[{Type:2,Flicker:1b,Colors:[I;0,0]}]}} 1

#give the crossbow
item replace entity @s hotbar.0 with crossbow{Unbreakable:1b,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']}} 1

#fireball
item replace entity @s[team=uRed] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,red:1b} 3
item replace entity @s[team=uBlue] hotbar.1 with snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,blue:1b} 3

#multishot
#expecto homoconversus

#evoker fang shot
#the claws of rach'ivalishize

#healing shot
#incolumitas


#ability cooldowns
scoreboard players set @s movement 100
scoreboard players set @s ability1 319
scoreboard players set @s ability2 299
scoreboard players set @s ability3 159