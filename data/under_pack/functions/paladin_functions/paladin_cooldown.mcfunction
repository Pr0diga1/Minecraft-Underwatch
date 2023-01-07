#iterate ability1
execute if score @s ability1 matches ..179 run scoreboard players add @s ability1 1
#ability1 intervals
execute if score @s ability1 matches 180 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 160 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:3,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 140 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:6,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 120 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:8,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 100 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:11,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 80 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:14,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 60 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:17,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 40 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:19,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1
execute if score @s ability1 matches 20 run item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:22,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1



#iterate ability2
execute if score @s ability2 matches ..240 run scoreboard players add @s ability2 1
#ability1 intervals
execute if score @s ability2 matches 240 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 220 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:2,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 200 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:4,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 180 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:6,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 160 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:8,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 140 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:10,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 120 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:12,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 100 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:15,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 80 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:17,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 60 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:19,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 40 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:21,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1
execute if score @s ability2 matches 20 run item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:24,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1



#iterate movement
execute if score @s movement matches 1.. run scoreboard players remove @s movement 1
#movement intervals
execute if score @s movement matches 140 run item replace entity @s weapon.offhand with oak_planks 7
execute if score @s movement matches 120 run item replace entity @s weapon.offhand with oak_planks 6
execute if score @s movement matches 100 run item replace entity @s weapon.offhand with oak_planks 5
execute if score @s movement matches 80 run item replace entity @s weapon.offhand with oak_planks 4
execute if score @s movement matches 60 run item replace entity @s weapon.offhand with oak_planks 3
execute if score @s movement matches 40 run item replace entity @s weapon.offhand with oak_planks 2
execute if score @s movement matches 20 run item replace entity @s weapon.offhand with oak_planks 1
execute if score @s movement matches 1 run scoreboard players set @s shieldDelay 0
execute if score @s movement matches 1 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Piece of Driftwood"}'},HideFlags:1,Damage:336} 1