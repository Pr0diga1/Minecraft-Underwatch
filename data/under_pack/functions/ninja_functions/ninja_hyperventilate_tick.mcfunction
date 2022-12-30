#down 1 damage
item modify entity @s hotbar.2 under_pack:down1damage

#scoreboard goes down
scoreboard players remove @s ninjaHyperventilate 1

#reset at 0
execute if score @s ninjaHyperventilate matches 0 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right Click to hyperventilate"}']},Damage:25,ninjaHyperventilate:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1720202667,-1900395342,-1354315421,-1721737083],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;1437762905,795430736,-1620033804,-281481686],Slot:"mainhand"}]} 1