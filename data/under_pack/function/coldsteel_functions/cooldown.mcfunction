#bnin
item modify entity @s hotbar.1 under_pack:coldsteel/bnin
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"black","text":"BAND NINE INCH NALS"}',custom_data={bnin:1b}] 1
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

#ender pearl
execute if score @s ability2 matches 80 run item replace entity @s hotbar.2 with barrier[custom_name='{"text":"NOTHIN PERSONNEL on cooldown"}']
item modify entity @s hotbar.2 under_pack:coldsteel/tp
execute if score @s ability2 matches 1 run item replace entity @s[team=uRed] hotbar.2 with ender_pearl[custom_name='{"bold":true,"color":"dark_gray","text":"NOTHIN PERSONNEL"}',custom_data={coldtp:1b,red:1b}] 1
execute if score @s ability2 matches 1 run item replace entity @s[team=uBlue] hotbar.2 with ender_pearl[custom_name='{"bold":true,"color":"dark_gray","text":"NOTHIN PERSONNEL"}',custom_data={coldtp:1b,blue:1b}] 1
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1

#special power
execute if score @s ability3 matches 140 run function under_pack:coldsteel_functions/power_reset
item modify entity @s hotbar.3 under_pack:coldsteel/power
execute if score @s ability3 matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"bold":true,"color":"red","text":"SPECIAL POWER"}',custom_data={coldpower:1b}] 1
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1

