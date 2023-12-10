clear @s
item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b}
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Shotgun","color":"white"}',Lore:['{"text":"have you ever played tf2?"}']},HideFlags:5,gunsg:1b}

tag @s add gun
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0


function under_pack:general_functions/general_character_select

