#fireball iteration
execute if score @s movement matches ..199 run scoreboard players add @s movement 1
#fireball intervals
execute if score @s movement matches 20 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:22,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 40 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:20,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 60 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:17,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 80 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:15,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 100 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:12,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 120 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:10,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 140 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:7,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 160 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:5,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 180 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:2,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
execute if score @s movement matches 200 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
