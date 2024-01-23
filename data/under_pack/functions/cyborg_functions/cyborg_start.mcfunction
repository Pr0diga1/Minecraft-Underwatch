clear @s

#armor/knife
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
item replace entity @s hotbar.0 with iron_block{display:{Name:'{"text":"Metal Hand","color":"dark_gray","bold":true}'},Tags:["cyborgsword"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1543567324,-1139521122,-1677417312,803532992]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;-698731259,-1217116907,-1310594328,-1763837154]}]} 1

#xp
experience set @s 0 levels

#carrots
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:27,display:{Name:'{"text":"Speed Module","color":"blue"}'},cyborgspeed:1b} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:27,display:{Name:'{"text":"Regeneration Module","color":"light_purple"}'},cyborgregen:1b} 1




