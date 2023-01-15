clear @s

#give the fireworks in offhand, there will always be one
item replace entity @s weapon.offhand with firework_rocket{display:{Name:'{"text":"Abyssal Voidwrath","color":"black","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"imbued with the power of the abyss"}']},Fireworks:{Flight:1b,Explosions:[{Type:2,Flicker:1b,Colors:[I;0,0]}]}} 1

#give the crossbow
item replace entity @s hotbar.0 with crossbow{Unbreakable:1b,display:{Name:'{"text":"Agicmay Andway","color":"light_purple","bold":true,"italic":true}',Lore:['{"text":"Crafted from the tree of Lofaktar"}']}} 1

#fireball
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},Unbreakable:1b,wizardFireball:1b} 1

#multishot
#expecto homoconversus

#evoker fang shot
#the claws of rach'ivalishize

#healing shot
#incolumitas


#ability cooldowns
scoreboard players set @s movement 199
scoreboard players set @s ability1 319
scoreboard players set @s ability2 299
scoreboard players set @s ability3 159