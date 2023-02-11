#fireball giving
execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball",Count:3b},{Slot:1b}]}] run scoreboard players add @s movement 1
execute if score @s[team=uRed] movement matches 100 run give @s snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,red:1b} 
execute if score @s[team=uBlue] movement matches 100 run give @s snowball{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b,blue:1b}
execute if score @s movement matches 100.. run scoreboard players set @s movement 0

#fireball actionbars
execute if score @s movement matches 1 run title @s actionbar ["",{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"5","color":"red"}]
execute if score @s movement matches 20 run title @s actionbar ["",{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"4","color":"red"}]
execute if score @s movement matches 40 run title @s actionbar ["",{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"3","color":"red"}]
execute if score @s movement matches 60 run title @s actionbar ["",{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"2","color":"red"}]
execute if score @s movement matches 80 run title @s actionbar ["",{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"1","color":"red"}]
execute if score @s movement matches 99 run title @s actionbar ["",{"text":" "}]

#multishot
execute if score @s ability1 matches ..299 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 300 run item replace entity @s hotbar.2 with crossbow{display:{Name:'[{"text":"Expecto ","color":"light_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16768256]},{Type:1,Colors:[I;4521728]},{Type:1,Colors:[I;255]},{Type:1,Colors:[I;16711918]}]}}}],Charged:1b} 1

#claws
execute if score @s ability2 matches ..299 run scoreboard players add @s ability2 1
execute if score @s ability2 matches 300 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b} 1

#healing
execute if score @s ability3 matches ..180 run scoreboard players add @s ability3 1
#execute if score @s ability3 matches 180 run item replace entity @s hotbar.4 with crossbow{display:{Name:'{"text":"Incolumitas","color":"yellow"}'},Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Trail:1b,Colors:[I;16776960]}]}}},{},{}],Charged:1b} 1
