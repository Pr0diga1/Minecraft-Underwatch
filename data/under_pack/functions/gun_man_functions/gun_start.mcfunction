clear @s
item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b}
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:51,display:{Name:'{"text":"Shotgun","color":"white"}',Lore:['{"text":"have you ever played tf2?"}']},HideFlags:5,gunsg:1b}
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Grenade Launcher","color":"white"}',Lore:['{"text":"sucky sucky"}']},HideFlags:5,gungl:1b}
item replace entity @s armor.head with iron_helmet{HideFlags:2,Unbreakable:1b} 1
item replace entity @s armor.chest with iron_chestplate{HideFlags:2,Unbreakable:1b} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:projectile_protection",lvl:8s}]}
tag @s add gun
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0



function under_pack:general_functions/general_character_select

