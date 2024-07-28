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
execute if score @s ability1 matches 300 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='[{"color":"red","text":"E"},{"color":"gold","text":"x"},{"color":"yellow","text":"p"},{"color":"green","text":"e"},{"color":"dark_aqua","text":"c"},{"color":"blue","text":"t"},{"color":"dark_purple","text":"o "},{"color":"red","text":"h"},{"color":"gold","text":"o"},{"color":"yellow","text":"m"},{"color":"green","text":"o"},{"color":"dark_aqua","text":"c"},{"color":"blue","text":"o"},{"color":"dark_purple","text":"n"},{"color":"red","text":"v"},{"color":"gold","text":"e"},{"color":"yellow","text":"r"},{"color":"green","text":"s"},{"color":"dark_aqua","text":"u"},{"color":"blue","text":"s"}]',unbreakable={show_in_tooltip:false},custom_model_data=48,custom_data={wizardGay:1b}] 1
execute if score @s ability1 matches 0..1 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 15
execute if score @s ability1 matches 20 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 14
execute if score @s ability1 matches 40 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 13
execute if score @s ability1 matches 60 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 12
execute if score @s ability1 matches 80 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 11
execute if score @s ability1 matches 100 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 10
execute if score @s ability1 matches 120 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 9
execute if score @s ability1 matches 140 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 8
execute if score @s ability1 matches 160 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 7
execute if score @s ability1 matches 180 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 6
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 5
execute if score @s ability1 matches 220 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 4
execute if score @s ability1 matches 240 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 3
execute if score @s ability1 matches 260 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 2
execute if score @s ability1 matches 280 run item replace entity @s hotbar.2 with carrot[custom_name='"Expecto Homoconversus on Cooldown"',custom_model_data=1] 1

#claws
execute if score @s ability2 matches ..299 run scoreboard players add @s ability2 1
execute if score @s ability2 matches 300 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"color":"dark_green","text":"The Claws of Rach\'ivalishize"}',unbreakable={show_in_tooltip:false},custom_model_data=47,custom_data={wizardClaws:1b}] 1
execute if score @s ability2 matches 0..1 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 15
execute if score @s ability2 matches 20 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 14
execute if score @s ability2 matches 40 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 13
execute if score @s ability2 matches 60 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 12
execute if score @s ability2 matches 80 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 11
execute if score @s ability2 matches 100 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 10
execute if score @s ability2 matches 120 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 9
execute if score @s ability2 matches 140 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 8
execute if score @s ability2 matches 160 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 7
execute if score @s ability2 matches 180 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 6
execute if score @s ability2 matches 200 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 5
execute if score @s ability2 matches 220 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 4
execute if score @s ability2 matches 240 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 3
execute if score @s ability2 matches 260 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 2
execute if score @s ability2 matches 280 run item replace entity @s hotbar.3 with barrier[custom_name='"Claws of Rach\'ivalishize on Cooldown"',custom_model_data=59] 1

#curse
execute if score @s ability4 matches ..59 run scoreboard players add @s ability4 1
execute if score @s ability4 matches 60 run item replace entity @s hotbar.4 with ender_eye[custom_name='[{"bold":false,"color":"black","italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh","underlined":false},{"bold":true,"color":"black","italic":true,"obfuscated":false,"strikethrough":false,"text":"Curse","underlined":false},{"bold":false,"italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh"}]',custom_model_data=2] 1
execute if score @s ability4 matches 0..1 run item replace entity @s hotbar.4 with carrot[custom_model_data=16] 3
execute if score @s ability4 matches 20 run item replace entity @s hotbar.4 with carrot[custom_model_data=17] 2
execute if score @s ability4 matches 40 run item replace entity @s hotbar.4 with carrot[custom_model_data=18] 1

#ability3
execute as @s[team=uRed] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=redWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uRed] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=redWizardSpell] run experience add @s 32 points
execute as @s[team=uBlue] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=blueWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uBlue] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=blueWizardSpell] run experience add @s 32 points
execute if score @s ability3 matches 50.. run item modify entity @s hotbar.0 under_pack:wizard/main_complete
