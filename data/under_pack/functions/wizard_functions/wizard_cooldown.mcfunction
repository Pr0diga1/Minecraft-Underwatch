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
execute if score @s ability1 matches 300 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"E","color":"red"},{"text":"x","color":"gold"},{"text":"p","color":"yellow"},{"text":"e","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"t","color":"blue"},{"text":"o ","color":"dark_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,wizardGay:1b} 1

#claws
execute if score @s ability2 matches ..299 run scoreboard players add @s ability2 1
execute if score @s ability2 matches 300 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b} 1
execute if score @s ability2 matches 0..1 run item replace entity @s hotbar.3 with dead_brain_coral 15
execute if score @s ability2 matches 20 run item replace entity @s hotbar.3 with dead_brain_coral 14
execute if score @s ability2 matches 40 run item replace entity @s hotbar.3 with dead_brain_coral 13
execute if score @s ability2 matches 60 run item replace entity @s hotbar.3 with dead_brain_coral 12
execute if score @s ability2 matches 80 run item replace entity @s hotbar.3 with dead_brain_coral 11
execute if score @s ability2 matches 100 run item replace entity @s hotbar.3 with dead_brain_coral 10
execute if score @s ability2 matches 120 run item replace entity @s hotbar.3 with dead_brain_coral 9
execute if score @s ability2 matches 140 run item replace entity @s hotbar.3 with dead_brain_coral 8
execute if score @s ability2 matches 160 run item replace entity @s hotbar.3 with dead_brain_coral 7
execute if score @s ability2 matches 180 run item replace entity @s hotbar.3 with dead_brain_coral 6
execute if score @s ability2 matches 200 run item replace entity @s hotbar.3 with dead_brain_coral 5
execute if score @s ability2 matches 220 run item replace entity @s hotbar.3 with dead_brain_coral 4
execute if score @s ability2 matches 240 run item replace entity @s hotbar.3 with dead_brain_coral 3
execute if score @s ability2 matches 260 run item replace entity @s hotbar.3 with dead_brain_coral 2
execute if score @s ability2 matches 280 run item replace entity @s hotbar.3 with dead_brain_coral 1



#ability3
execute as @s[team=uRed] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=redWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uRed] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=redWizardSpell] run experience add @s 32 points
execute as @s[team=uBlue] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=blueWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uBlue] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=blueWizardSpell] run experience add @s 32 points