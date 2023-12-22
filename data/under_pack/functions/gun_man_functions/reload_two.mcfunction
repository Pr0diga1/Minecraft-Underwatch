scoreboard players set @s ability6 0
execute if entity @s[team=uBlue] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,blue:1b}
execute if entity @s[team=uRed] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,red:1b}
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Grenade Launcher","color":"white"}',Lore:['{"text":"sucky sucky"}']},HideFlags:5,gungl:1b}



