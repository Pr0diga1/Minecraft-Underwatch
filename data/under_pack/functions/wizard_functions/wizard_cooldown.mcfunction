#fireball giving
execute if score @s wizardFireball matches ..2 run scoreboard players add @s movement 1
execute if score @s movement matches 100 run scoreboard players add @s wizardFireball 1
execute if score @s movement matches 100.. run scoreboard players set @s movement 0

#fireball actionbars
#execute if score @s movement matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged          ","color": "gold"},{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"5","color":"red"}]
#execute if score @s movement matches 20 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged          ","color": "gold"},{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"4","color":"red"}]
#execute if score @s movement matches 40 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged          ","color": "gold"},{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"3","color":"red"}]
#execute if score @s movement matches 60 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged          ","color": "gold"},{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"2","color":"red"}]
#execute if score @s movement matches 80 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged          ","color": "gold"},{"text":"Ignis Sorcery Rechanneling: ","color":"gold"},{"text":"1","color":"red"}]
#execute if score @s movement matches 99 run title @s actionbar ["",{"text":" "}]
execute if score @s wizardFireball matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Cast Charged  ","color": "gold"},{"score":{"name":"@s","objective":"movement"}, "color":"dark_blue"},{"text":"/100","color": "dark_green"}]
execute unless score @s wizardFireball matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged  ","color": "gold"},{"score":{"name":"@s","objective":"movement"}, "color":"dark_blue"},{"text":"/100","color": "dark_green"}]

#rainbow
execute if score @s ability1 matches ..299 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 300 run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:48,display:{Name:'[{"text":"E","color":"red"},{"text":"x","color":"gold"},{"text":"p","color":"yellow"},{"text":"e","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"t","color":"blue"},{"text":"o ","color":"dark_purple"},{"text":"h","color":"red"},{"text":"o","color":"gold"},{"text":"m","color":"yellow"},{"text":"o","color":"green"},{"text":"c","color":"dark_aqua"},{"text":"o","color":"blue"},{"text":"n","color":"dark_purple"},{"text":"v","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"s","color":"green"},{"text":"u","color":"dark_aqua"},{"text":"s","color":"blue"}]'},Unbreakable:1b,wizardGay:1b} 1
execute if score @s ability1 matches 0..1 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:1} 15
execute if score @s ability1 matches 20 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:2} 14
execute if score @s ability1 matches 40 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:3} 13
execute if score @s ability1 matches 60 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:4} 12
execute if score @s ability1 matches 80 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:5} 11
execute if score @s ability1 matches 100 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:6} 10
execute if score @s ability1 matches 120 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:7} 9
execute if score @s ability1 matches 140 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:8} 8
execute if score @s ability1 matches 160 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:9} 7
execute if score @s ability1 matches 180 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:10} 6
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:11} 5
execute if score @s ability1 matches 220 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:12} 4
execute if score @s ability1 matches 240 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:13} 3
execute if score @s ability1 matches 260 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:14} 2
execute if score @s ability1 matches 280 run item replace entity @s hotbar.2 with carrot{display:{Name:'{"text":"Expecto Homoconversus on Cooldown"}'},CustomModelData:15} 1

#claws
execute if score @s ability2 matches ..299 run scoreboard players add @s ability2 1
execute if score @s ability2 matches 300 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"The Claws of Rach\'ivalishize","color":"dark_green"}'},Unbreakable:1b,wizardClaws:1b,CustomModelData:47} 1
execute if score @s ability2 matches 0..1 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 15
execute if score @s ability2 matches 20 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 14
execute if score @s ability2 matches 40 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 13
execute if score @s ability2 matches 60 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 12
execute if score @s ability2 matches 80 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 11
execute if score @s ability2 matches 100 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 10
execute if score @s ability2 matches 120 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 9
execute if score @s ability2 matches 140 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 8
execute if score @s ability2 matches 160 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 7
execute if score @s ability2 matches 180 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 6
execute if score @s ability2 matches 200 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 5
execute if score @s ability2 matches 220 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 4
execute if score @s ability2 matches 240 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 3
execute if score @s ability2 matches 260 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 2
execute if score @s ability2 matches 280 run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Claws of Rach\'ivalishize on Cooldown"}'},CustomModelData:59} 1

#curse
execute if score @s ability4 matches ..59 run scoreboard players add @s ability4 1
execute if score @s ability4 matches 60 run item replace entity @s hotbar.4 with ender_eye{CustomModelData:2,display:{Name:'[{"text":"fgh","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"Curse","color":"black","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"fgh","bold":false,"italic":false,"strikethrough":false,"obfuscated":true}]'}} 1
execute if score @s ability4 matches 0..1 run item replace entity @s hotbar.4 with carrot{CustomModelData:16} 3
execute if score @s ability4 matches 20 run item replace entity @s hotbar.4 with carrot{CustomModelData:17} 2
execute if score @s ability4 matches 40 run item replace entity @s hotbar.4 with carrot{CustomModelData:18} 1

#ability3
execute as @s[team=uRed] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=redWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uRed] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=redWizardSpell] run experience add @s 32 points
execute as @s[team=uBlue] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=blueWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uBlue] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=blueWizardSpell] run experience add @s 32 points
execute if score @s ability3 matches 50.. run item modify entity @s hotbar.0 under_pack:wizard/main_complete
