#fireball giving
execute if score @s wizardFireball matches ..2 run scoreboard players add @s movement 1
execute if score @s movement matches 100 run scoreboard players add @s wizardFireball 1
execute if score @s movement matches 100.. run scoreboard players set @s movement 0

#fireball actionbars
execute if score @s wizardFireball matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Cast Charged  ","color": "gold"},{"score":{"name":"@s","objective":"movement"}, "color":"dark_blue"},{"text":"/100","color": "dark_green"}]
execute unless score @s wizardFireball matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wizardFireball"}, "color":"red"},{"text":" Ignis Casts Charged  ","color": "gold"},{"score":{"name":"@s","objective":"movement"}, "color":"dark_blue"},{"text":"/100","color": "dark_green"}]

#claws
execute if score @s ability2 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"color":"dark_green","text":"The Claws of Rach\'ivalishize"}',unbreakable={show_in_tooltip:false},custom_model_data=47,custom_data={wizardClaws:1b}] 1
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
item modify entity @s hotbar.2 under_pack:wizard/fangs

#curse
execute if score @s ability4 matches ..59 run scoreboard players add @s ability4 1
execute if score @s ability4 matches 60 run item replace entity @s hotbar.3 with ender_eye[custom_name='[{"bold":false,"color":"black","italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh","underlined":false},{"bold":true,"color":"black","italic":true,"obfuscated":false,"strikethrough":false,"text":"Curse","underlined":false},{"bold":false,"italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh"}]',custom_model_data=2] 1
execute if score @s ability4 matches 0..1 run item replace entity @s hotbar.3 with carrot[custom_model_data=16] 3
execute if score @s ability4 matches 20 run item replace entity @s hotbar.3 with carrot[custom_model_data=17] 2
execute if score @s ability4 matches 40 run item replace entity @s hotbar.3 with carrot[custom_model_data=18] 1

#ability3
execute as @s[team=uRed] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=redWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uRed] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=redWizardSpell] run experience add @s 32 points
execute as @s[team=uBlue] if score @s ability3 matches ..49 unless entity @e[type=marker,tag=blueWizardSpell] run scoreboard players add @s ability3 2
execute as @s[team=uBlue] if score @s ability3 matches ..47 unless entity @e[type=marker,tag=blueWizardSpell] run experience add @s 32 points
execute if score @s ability3 matches 50.. run item modify entity @s hotbar.0 under_pack:wizard/main_complete
