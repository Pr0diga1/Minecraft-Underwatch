#cooldown
scoreboard players set @s ability1 159
scoreboard players set @s ability2 139
scoreboard players set @s ability3 299
#brass knuckles
scoreboard players set @s ninjaHyperventilate 0
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:25,display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right Click to hyperventilate"}']},ninjaHyperventilate:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1720202667,-1900395342,-1354315421,-1721737083],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;1437762905,795430736,-1620033804,-281481686],Slot:"mainhand"}]} 1
#resetting ult tracking scoreboards
execute if score @s ninjaUltActive matches 1 run function under_pack:ninja_functions/ninja_ult_end
scoreboard players set @s ninjaUltActive 0
scoreboard players set @s ninjaUltTiming 0
