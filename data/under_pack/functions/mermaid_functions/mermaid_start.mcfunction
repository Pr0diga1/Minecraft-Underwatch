clear @s
item replace entity @s hotbar.0 with bubble_coral_fan{display:{Name:'{"text":"Poseidon\'s Back Scratcher","color":"blue"}'},HideFlags:4,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;-1506563190,401687741,-1460360327,-268238986],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.8,Operation:0,UUID:[I;79580379,-1903935077,-1275222226,-997440825],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with ender_eye{mermaidmist:1b,display:{Name:'{"text":"Nautical Mist","color":"dark_blue"}'}}
item replace entity @s hotbar.2 with lingering_potion{mermaidpotion:1b,display:{Name:'{"text":"Tide Pool","color":"gray"}',Lore:['{"text":"Slows Enemies"}']},HideFlags:32,CustomPotionEffects:[{Id:12,Amplifier:0b,Duration:20,ShowParticles:0b}],Potion:"minecraft:empty",CustomPotionColor:1591008} 1


item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with diamond_boots

scoreboard players set @s mermaidmist 74
experience set @s 100 levels
experience set @s 741 points




