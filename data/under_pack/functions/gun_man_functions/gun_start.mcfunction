clear @s
item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b}
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Shotgun","color":"white"}',Lore:['{"text":"have you ever played tf2?"}']},HideFlags:5,gunsg:1b}
item replace entity @s armor.chest with chainmail_chestplate{HideFlags:2,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:12,Operation:0,UUID:[I;-1728819482,-1676000605,-1806744958,-439757376]}]} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:8s}]}
tag @s add gun
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0


function under_pack:general_functions/general_character_select

